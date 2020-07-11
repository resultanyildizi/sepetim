part of 'item_category_subcollection_bloc.dart';

@freezed
abstract class ItemCategorySubcollectionState
    with _$ItemCategorySubcollectionState {
  const factory ItemCategorySubcollectionState({
    @required NotNegativeIntegerNumber groupCount,
    @required NotNegativeIntegerNumber itemCount,
  }) = _ItemCategorySubCollectionState;

  factory ItemCategorySubcollectionState.initial() =>
      ItemCategorySubcollectionState(
        groupCount: NotNegativeIntegerNumber(0),
        itemCount: NotNegativeIntegerNumber(0),
      );
}
