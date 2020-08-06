part of 'item_form_bloc.dart';

@freezed
abstract class ItemFormState with _$ItemFormState {
  const factory ItemFormState({
    @required Item item,
    @required bool showErrorMessages,
    @required Option<Either<ItemFailure, Unit>> itemFailureOrSuccessOption,
    @required bool isEditing,
    @required bool isSaving,
    @required int timeChangeScore,
    @required List<Option<File>> temporaryImageFiles,
    @required List<bool> isPictureRemoved,
  }) = _ItemFormState;

  factory ItemFormState.initial() => ItemFormState(
      item: Item.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSaving: false,
      itemFailureOrSuccessOption: none(),
      temporaryImageFiles: <Option<File>>[none(), none(), none()].toList(),
      isPictureRemoved: <bool>[false, false, false].toList(),
      timeChangeScore: 0);
}
