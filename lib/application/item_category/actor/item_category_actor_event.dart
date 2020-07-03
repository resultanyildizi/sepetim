part of 'item_category_actor_bloc.dart';

@freezed
abstract class ItemCategoryActorEvent with _$ItemCategoryActorEvent {
  const factory ItemCategoryActorEvent.deleted(ItemCategory category) =
      _Deleted;
}
