import 'dart:async';

import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/i_item_repository.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/item_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_watcher_bloc.freezed.dart';

part 'item_watcher_event.dart';
part 'item_watcher_state.dart';

@injectable
class ItemWatcherBloc extends Bloc<ItemWatcherEvent, ItemWatcherState> {
  final IItemRepository _itemRepository;

  ItemWatcherBloc(this._itemRepository);

  StreamSubscription<Either<ItemFailure, KtList<Item>>> _itemStreamSubscription;
  @override
  ItemWatcherState get initialState => const ItemWatcherState.initial();
  @override
  Stream<ItemWatcherState> mapEventToState(
    ItemWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ItemWatcherState.loading();

        await _itemStreamSubscription?.cancel();
        _itemStreamSubscription = _itemRepository
            .watchAll(e.categoryId, e.groupId, e.orderType)
            .listen((failureOrItems) =>
                add($ItemWatcherEvent.itemsReceived(failureOrItems)));
      },
      watchAllByTitleStarted: (e) async* {
        await _itemStreamSubscription?.cancel();
        _itemStreamSubscription = _itemRepository
            .watchAllByTitle(e.categoryId, e.groupId, e.orderType, e.title)
            .listen((failureOrItems) =>
                add($ItemWatcherEvent.itemsReceived(failureOrItems)));
      },
      itemsReceived: (e) async* {
        yield e.failureOrItems.fold(
          (f) => ItemWatcherState.loadFailure(f),
          (items) => ItemWatcherState.loadSuccess(items),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _itemStreamSubscription?.cancel();
    return super.close();
  }
}
