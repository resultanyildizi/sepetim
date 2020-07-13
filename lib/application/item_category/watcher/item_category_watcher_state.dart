part of 'item_category_watcher_bloc.dart';

@freezed
abstract class ItemCategoryWatcherState with _$ItemCategoryWatcherState {
  const factory ItemCategoryWatcherState.initial() = _Initial;
  const factory ItemCategoryWatcherState.loadInProgress(
      {@required bool isSearching}) = _LoadInProgress;
  const factory ItemCategoryWatcherState.loadSuccess(
      KtList<ItemCategory> categories) = _LoadSuccess;
  const factory ItemCategoryWatcherState.loadFailure(
      ItemCategoryFailure categoryFailure) = _LoadFailure;
}
