part of 'item_category_form_bloc.dart';

@freezed
abstract class ItemCategoryFormState with _$ItemCategoryFormState {
  const factory ItemCategoryFormState({
    @required ItemCategory category,
    @required bool showErrorMessages,
    @required
        Option<Either<ItemCategoryFailure, Unit>>
            categoryFailureOrSuccessOption,
    @required bool isSaving,
    @required bool isEditing,
    @required bool isCoverRemoved,
    @required Option<File> temporaryImageFile,
  }) = _ItemCategoryFormState;

  factory ItemCategoryFormState.initial() => ItemCategoryFormState(
        category: ItemCategory.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        isCoverRemoved: false,
        categoryFailureOrSuccessOption: none(),
        temporaryImageFile: none(),
      );
}
