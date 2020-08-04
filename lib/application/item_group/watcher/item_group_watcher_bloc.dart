import 'dart:async';

import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/item_group/item_group_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_group_watcher_event.dart';
part 'item_group_watcher_state.dart';

part 'item_group_watcher_bloc.freezed.dart';

@injectable
class ItemGroupWatcherBloc
    extends Bloc<ItemGroupWatcherEvent, ItemGroupWatcherState> {
  final IItemGroupRepository _groupRepository;

  ItemGroupWatcherBloc(this._groupRepository);

  @override
  ItemGroupWatcherState get initialState =>
      const ItemGroupWatcherState.initial();

  StreamSubscription<Either<ItemGroupFailure, KtList<ItemGroup>>>
      groupStreamSubscription;

  @override
  Stream<ItemGroupWatcherState> mapEventToState(
    ItemGroupWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        groupStreamSubscription?.cancel();
        groupStreamSubscription = _groupRepository
            .watchAll(e.categoryId, e.orderType)
            .listen((failureOrGroups) {
          add(ItemGroupWatcherEvent.groupsReceived(failureOrGroups));
        });
      },
      watchAllByTitleStarted: (e) async* {
        groupStreamSubscription?.cancel();
        groupStreamSubscription = _groupRepository
            .watchAllByTitle(e.categoryId, e.orderType, e.title)
            .listen((failureOrGroups) {
          add(ItemGroupWatcherEvent.groupsReceived(failureOrGroups));
        });
      },
      groupsReceived: (e) async* {
        yield e.failureOrGroups.fold(
          (l) => const ItemGroupWatcherState.loadFailure(),
          (groups) => ItemGroupWatcherState.loadSuccess(groups),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    groupStreamSubscription?.cancel();
    return super.close();
  }
}
