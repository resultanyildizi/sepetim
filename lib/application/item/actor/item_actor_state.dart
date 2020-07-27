part of 'item_actor_bloc.dart';

@freezed
abstract class ItemActorState with _$ItemActorState {
  const factory ItemActorState.initial() = _Initial;
  const factory ItemActorState.actionInProgress() = _ActionInProgress;
  const factory ItemActorState.deleteSuccess() = _DeleteSuccess;
  const factory ItemActorState.deleteFailure(ItemFailure failure) =
      _DeleteFailure;
}
