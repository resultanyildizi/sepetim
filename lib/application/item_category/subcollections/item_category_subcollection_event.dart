part of 'item_category_subcollection_bloc.dart';

@freezed
abstract class ItemCategorySubcollectionEvent
    with _$ItemCategorySubcollectionEvent {
  const factory ItemCategorySubcollectionEvent.getSubcollectionCount(
      ItemCategory category) = _ItemCategorySubcollectionEvent;
}
