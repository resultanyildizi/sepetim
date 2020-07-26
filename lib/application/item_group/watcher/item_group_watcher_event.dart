part of 'item_group_watcher_bloc.dart';

@freezed
abstract class ItemGroupWatcherEvent with _$ItemGroupWatcherEvent {
  const factory ItemGroupWatcherEvent.watchAllStarted(
      UniqueId categoryId, OrderType orderType) = _WatchAll;
  const factory ItemGroupWatcherEvent.watchAllByTitleStarted(
    UniqueId categoryId,
    OrderType orderType,
    String title,
  ) = _WatchAllByTitle;
  const factory ItemGroupWatcherEvent.groupsReceived(
    Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups,
  ) = _GroupsReceived;
}
