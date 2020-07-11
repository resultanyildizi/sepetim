part of 'item_category_selector_bloc.dart';

@freezed
abstract class ItemCategorySelectorState with _$ItemCategorySelectorState {
  const factory ItemCategorySelectorState({
    @required Option<ItemCategory> selectedCategory,
  }) = _ItemCategorySelectorState;

  factory ItemCategorySelectorState.initial() => ItemCategorySelectorState(
        selectedCategory: none(),
      );
}
