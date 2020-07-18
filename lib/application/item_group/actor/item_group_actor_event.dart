part of 'item_group_actor_bloc.dart';

@freezed
abstract class ItemGroupActorEvent with _$ItemGroupActorEvent {
  const factory ItemGroupActorEvent.deleted(
    UniqueId categoryId,
    ItemGroup group,
  ) = _ItemGroupActorEvent;
}
