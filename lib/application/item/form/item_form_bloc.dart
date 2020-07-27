import 'dart:async';
import 'dart:io';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/i_item_repository.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/item_failure.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/kt.dart';

part 'item_form_bloc.freezed.dart';

part 'item_form_event.dart';
part 'item_form_state.dart';

@injectable
class ItemFormBloc extends Bloc<ItemFormEvent, ItemFormState> {
  final IItemRepository _itemRepository;

  ItemFormBloc(this._itemRepository);

  @override
  ItemFormState get initialState => ItemFormState.initial();
  @override
  Stream<ItemFormState> mapEventToState(
    ItemFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialOption.fold(
          () => state,
          (initialItem) => state.copyWith(
            item: initialItem,
            isEditing: true,
          ),
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(
            title: ShortTitle(e.title),
          ),
          itemFailureOrSuccessOption: none(),
        );
      },
      priceChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(
            price: Price(e.price),
          ),
          itemFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(
            description: DescriptionBody(e.descriptionBody),
          ),
          itemFailureOrSuccessOption: none(),
        );
      },
      selectedIndexChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(
            selectedIndex: SelectedIndex(e.index),
          ),
          itemFailureOrSuccessOption: none(),
        );
      },
      isFavoriteChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(
            isFavorite: !state.item.isFavorite,
          ),
          itemFailureOrSuccessOption: none(),
        );
        add(ItemFormEvent.saved(e.categoryId, e.groupId));
      },
      pictureChanged: (e) async* {
        final failureOrImageFile =
            await _itemRepository.loadPictureFromDevice(e.imageSource);

        yield failureOrImageFile.fold(
          (f) {
            final tempImageFiles =
                List<Option<File>>(state.temporaryImageFiles.length);
            for (int i = 0; i < tempImageFiles.length; i++) {
              tempImageFiles[i] = state.temporaryImageFiles[i];
            }
            tempImageFiles[e.index] = none();
            return state.copyWith(
              temporaryImageFiles: tempImageFiles,
            );
          },
          (imageFile) {
            final tempImageFiles =
                List<Option<File>>(state.temporaryImageFiles.length);
            final newIsPictureRemovedList =
                List<bool>(state.isPictureRemoved.length);
            for (int i = 0; i < tempImageFiles.length; i++) {
              tempImageFiles[i] = state.temporaryImageFiles[i];
              newIsPictureRemovedList[i] = state.isPictureRemoved[i];
            }
            tempImageFiles[e.index] = some(imageFile);
            newIsPictureRemovedList[e.index] = false;

            return state.copyWith(
              temporaryImageFiles: tempImageFiles,
              isPictureRemoved: newIsPictureRemovedList,
            );
          },
        );
      },
      pictureRemoved: (e) async* {
        final newIsPictureRemovedList =
            List<bool>(state.isPictureRemoved.length);
        final tempImageFiles =
            List<Option<File>>(state.temporaryImageFiles.length);
        for (int i = 0; i < state.isPictureRemoved.length; i++) {
          newIsPictureRemovedList[i] = state.isPictureRemoved[i];
          tempImageFiles[i] = state.temporaryImageFiles[i];
        }

        newIsPictureRemovedList[e.index] = true;
        tempImageFiles[e.index] = none();
        yield state.copyWith(
          isPictureRemoved: newIsPictureRemovedList,
          temporaryImageFiles: tempImageFiles,
        );
      },
      saved: (e) async* {
        Either<ItemFailure, Unit> failureOrSuccess;
        final newImageUrls = state.item.imageUrls.getOrCrash().toMutableList();

        yield state.copyWith(
          isSaving: true,
          itemFailureOrSuccessOption: none(),
        );

        if (state.item.failureOption.isNone()) {
          for (int i = 0; i < state.isPictureRemoved.length; i++) {
            final isPictureRemoved = state.isPictureRemoved[i];
            final oldImageUrl = state.item.imageUrls.getOrCrash()[i];

            if (isPictureRemoved) {
              final failureOrImageUrl = await _itemRepository
                  .removePictureFromServer(oldImageUrl, state.item);

              failureOrImageUrl.fold(
                (f) {
                  failureOrSuccess = left(f);
                },
                (imageUrl) {
                  newImageUrls[i] = imageUrl;
                },
              );
            }
          }

          for (int i = 0; i < state.temporaryImageFiles.length; i++) {
            final tempImageOption = state.temporaryImageFiles[i];
            if (tempImageOption.isSome()) {
              final oldImageUrl = state.item.imageUrls.getOrCrash()[i];
              final serverFailureOrLoadedImageUrl =
                  await _itemRepository.loadPictureToServer(
                      state.item, tempImageOption.getOrElse(() => null));
              serverFailureOrLoadedImageUrl.fold(
                (f) {
                  failureOrSuccess = left(f);
                },
                (imageUrl) async {
                  newImageUrls[i] = imageUrl;
                  await _itemRepository.removePictureFromServer(
                      oldImageUrl, state.item);
                },
              );
            }
          }
          failureOrSuccess = state.isEditing
              ? await _itemRepository.update(e.categoryId, e.groupId,
                  state.item.copyWith(imageUrls: List3(newImageUrls.toList())))
              : await _itemRepository.create(e.categoryId, e.groupId,
                  state.item.copyWith(imageUrls: List3(newImageUrls.toList())));
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          itemFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
