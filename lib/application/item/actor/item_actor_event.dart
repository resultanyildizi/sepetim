part of 'item_actor_bloc.dart';

@freezed
abstract class ItemActorEvent with _$ItemActorEvent {
  const factory ItemActorEvent.deleted(
    UniqueId categoryId,
    UniqueId groupId,
    Item item,
  ) = _Deleted;
}
