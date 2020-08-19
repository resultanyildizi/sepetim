part of 'item_group_watcher_bloc.dart';

@freezed
abstract class ItemGroupWatcherState with _$ItemGroupWatcherState {
  const factory ItemGroupWatcherState.initial() = _Initial;
  const factory ItemGroupWatcherState.loading() = _Loading;
  const factory ItemGroupWatcherState.loadSuccess(
    KtList<ItemGroup> groups,
  ) = _LoadSuccess;
  const factory ItemGroupWatcherState.loadFailure() = _LoadFailure;
}
