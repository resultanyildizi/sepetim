import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_category/item_category_failure.dart';
import 'package:Sepetim/domain/item_category/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'item_category_form_event.dart';
part 'item_category_form_state.dart';

part 'item_category_form_bloc.freezed.dart';

@injectable
class ItemCategoryFormBloc
    extends Bloc<ItemCategoryFormEvent, ItemCategoryFormState> {
  final IItemCategoryRepository _categoryRepository;

  ItemCategoryFormBloc(this._categoryRepository)
      : super(ItemCategoryFormState.initial());

  @override
  Stream<ItemCategoryFormState> mapEventToState(
    ItemCategoryFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialOption.fold(
        () => state,
        (initialCategory) => state.copyWith(
          category: initialCategory,
          isEditing: true,
        ),
      );
    }, titleChanged: (e) async* {
      yield state.copyWith(
        category: state.category.copyWith(
          title: ShortTitle(e.title),
        ),
        categoryFailureOrSuccessOption: none(),
      );
    }, colorChanged: (e) async* {
      yield state.copyWith(
        category: state.category.copyWith(
          color: ItemCategoryColor(e.color),
        ),
        categoryFailureOrSuccessOption: none(),
      );
    }, coverImageChanged: (e) async* {
      final failureOrImageFile =
          await _categoryRepository.loadCoverPictureFromDevice(e.imageSource);

      yield failureOrImageFile.fold(
        (f) => state.copyWith(
          temporaryImageFile: none(),
          categoryFailureOrSuccessOption: none(),
        ),
        (imageFile) => state.copyWith(
          temporaryImageFile: some(imageFile),
          isCoverRemoved: false,
          categoryFailureOrSuccessOption: none(),
        ),
      );
    }, coverImageRemoved: (e) async* {
      yield state.copyWith(
        isCoverRemoved: true,
        temporaryImageFile: none(),
        categoryFailureOrSuccessOption: none(),
      );
    }, saved: (e) async* {
      Either<ItemCategoryFailure, Unit> failureOrSuccess;
      ImageUrl categoryImageUrl = state.category.coverImageUrl;

      yield state.copyWith(
        isSaving: true,
        categoryFailureOrSuccessOption: none(),
      );

      if (state.category.failureOption.isNone()) {
        if (state.isCoverRemoved) {
          final failureOrImageUrl = await _categoryRepository
              .removeCoverPictureFromServer(state.category);

          failureOrImageUrl.fold(
            (f) {
              failureOrSuccess ??= left(f);
            },
            (imageUrl) async {
              categoryImageUrl = imageUrl;
            },
          );
        } else if (state.temporaryImageFile.isSome()) {
          final serverFailureOrLoadedImageUrl =
              await _categoryRepository.loadCoverPictureToServer(state.category,
                  state.temporaryImageFile.getOrElse(() => null));
          serverFailureOrLoadedImageUrl.fold(
            (f) {
              failureOrSuccess ??= left(f);
            },
            (imageUrl) async {
              categoryImageUrl = imageUrl;
            },
          );
        }
        failureOrSuccess ??= state.isEditing
            ? await _categoryRepository.update(
                state.category.copyWith(coverImageUrl: categoryImageUrl))
            : await _categoryRepository.create(
                state.category.copyWith(coverImageUrl: categoryImageUrl));

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          categoryFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      }
    });
  }
}
