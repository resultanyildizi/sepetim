part of 'item_watcher_bloc.dart';

@freezed
abstract class ItemWatcherEvent with _$ItemWatcherEvent {
  const factory ItemWatcherEvent.watchAllStarted(
    UniqueId categoryId,
    UniqueId groupId,
    OrderType orderType,
  ) = _WatchAllStarted;

  const factory ItemWatcherEvent.watchAllByTitleStarted(
    UniqueId categoryId,
    UniqueId groupId,
    OrderType orderType,
    String title,
  ) = _WatchAllByTitleStarted;

  const factory ItemWatcherEvent.itemsReceived(
    Either<ItemFailure, KtList<Item>> failureOrItems,
  ) = _ItemsReceived;
}
