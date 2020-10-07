part of 'item_group_form_bloc.dart';

@freezed
abstract class ItemGroupFormState with _$ItemGroupFormState {
  const factory ItemGroupFormState({
    @required ItemGroup group,
    @required bool showErrorMessages,
    @required
        Option<Either<ItemGroupFailure, Unit>> groupFailureOrSuccessOption,
    @required bool isSaving,
    @required bool isEditing,
    @required bool isChanged,
  }) = _ItemGroupFormState;

  factory ItemGroupFormState.initial() => ItemGroupFormState(
        group: ItemGroup.empty(),
        groupFailureOrSuccessOption: none(),
        isEditing: false,
        isSaving: false,
        isChanged: false,
        showErrorMessages: false,
      );
}
