part of 'item_group_actor_bloc.dart';

@freezed
abstract class ItemGroupActorState with _$ItemGroupActorState {
  const factory ItemGroupActorState.initial() = _Initial;
  const factory ItemGroupActorState.actionInProgress() = _ActionInProgress;
  const factory ItemGroupActorState.deleteSuccess() = _DeleteSuccess;
  const factory ItemGroupActorState.deleteFailure(
      ItemGroupFailure groupFailure) = _DeleteFailure;
}
