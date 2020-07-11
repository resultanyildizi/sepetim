part of 'item_category_selector_bloc.dart';

@freezed
abstract class ItemCategorySelectorEvent with _$ItemCategorySelectorEvent {
  const factory ItemCategorySelectorEvent.selectedChanged(
      ItemCategory category) = _SelectedChanged;
}
