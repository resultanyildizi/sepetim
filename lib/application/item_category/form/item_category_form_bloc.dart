import 'dart:async';
import 'dart:ui';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_category/item_category_failure.dart';
import 'package:Sepetim/domain/item_category/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

  ItemCategoryFormBloc(this._categoryRepository);

  @override
  ItemCategoryFormState get initialState => ItemCategoryFormState.initial();

  @override
  Stream<ItemCategoryFormState> mapEventToState(
    ItemCategoryFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialOption.fold(
          () => state,
          (initialCategory) => state.copyWith(
            category: initialCategory,
            isEditing: true,
          ),
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          category: state.category.copyWith(
            title: ShortTitle(e.title),
          ),
          categoryFailureOrSuccessOption: none(),
        );
      },
      colorChanged: (e) async* {
        yield state.copyWith(
          category: state.category.copyWith(
            color: ItemCategoryColor(e.color),
          ),
          categoryFailureOrSuccessOption: none(),
        );
      },
      coverImageChanged: (e) async* {
        final failureOrImageFile =
            await _categoryRepository.loadCoverPictureFromDevice(e.imageSource);

        yield await failureOrImageFile.fold(
          (f) => state.copyWith(
            categoryFailureOrSuccessOption: some(left(f)),
          ),
          (imageFile) async {
            final serverFailureOrRemovedImageUrl = await _categoryRepository
                .removeCoverPictureFromServer(state.category);
            return serverFailureOrRemovedImageUrl.fold(
              (f) => state.copyWith(
                categoryFailureOrSuccessOption: some(left(f)),
              ),
              (_) async {
                final serverFailureOrLoadedImageUrl = await _categoryRepository
                    .loadCoverPictureToServer(state.category, imageFile);
                return serverFailureOrLoadedImageUrl.fold(
                  (f) => state.copyWith(
                    categoryFailureOrSuccessOption: some(left(f)),
                  ),
                  (imageUrl) => state.copyWith(
                    category: state.category.copyWith(
                      coverImageUrl: imageUrl,
                    ),
                    categoryFailureOrSuccessOption: none(),
                  ),
                );
              },
            );
          },
        );
      },
      coverImageRemoved: (e) async* {
        final failureOrImageUrl = await _categoryRepository
            .removeCoverPictureFromServer(state.category);

        yield failureOrImageUrl.fold(
          (f) => state.copyWith(
            categoryFailureOrSuccessOption: some(left(f)),
          ),
          (imageUrl) => state.copyWith(
            category: state.category.copyWith(
              coverImageUrl: imageUrl,
            ),
            categoryFailureOrSuccessOption: none(),
          ),
        );
      },
      saved: (e) async* {
        Either<ItemCategoryFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          categoryFailureOrSuccessOption: none(),
        );

        if (state.category.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _categoryRepository.update(state.category)
              : await _categoryRepository.create(state.category);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          categoryFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
