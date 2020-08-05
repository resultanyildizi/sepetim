part of 'item_category_actor_bloc.dart';

@freezed
abstract class ItemCategoryActorState with _$ItemCategoryActorState {
  const factory ItemCategoryActorState.initial() = _Initial;
  const factory ItemCategoryActorState.actionInProgress() = _ActionInProgress;

  const factory ItemCategoryActorState.deleteFailure(
      ItemCategoryFailure categoryFailure) = _DeleteFailure;

  const factory ItemCategoryActorState.deleteSuccess() = _DeleteSuccess;
}
