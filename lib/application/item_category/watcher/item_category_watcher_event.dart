part of 'item_category_watcher_bloc.dart';

@freezed
abstract class ItemCategoryWatcherEvent with _$ItemCategoryWatcherEvent {
  const factory ItemCategoryWatcherEvent.watchAllStarted(OrderType orderType) =
      _WatchAllStarted;

  const factory ItemCategoryWatcherEvent.watchAllByTitleStarted(
      OrderType orderType, String title) = _WatchAllByTitleStarted;

  const factory ItemCategoryWatcherEvent.categoriesReceived(
      Either<ItemCategoryFailure, KtList<ItemCategory>>
          failureOrCategories) = _CategoriesReceived;
}
