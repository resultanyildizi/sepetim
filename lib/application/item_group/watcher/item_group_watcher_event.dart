part of 'item_group_watcher_bloc.dart';

@freezed
abstract class ItemGroupWatcherEvent with _$ItemGroupWatcherEvent {
  const factory ItemGroupWatcherEvent.watchAll(
      UniqueId categoryId, OrderType orderType) = _WatchAll;
  const factory ItemGroupWatcherEvent.watchAllByTitle(
    UniqueId categoryId,
    OrderType orderType,
    String title,
  ) = _WatchAllByTitle;
  const factory ItemGroupWatcherEvent.groupsReceived(
    Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups,
  ) = _GroupsReceived;
}
