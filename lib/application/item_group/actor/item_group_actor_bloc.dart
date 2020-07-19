import 'dart:async';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/item_group/item_group_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'item_group_actor_event.dart';
part 'item_group_actor_state.dart';

part 'item_group_actor_bloc.freezed.dart';

@injectable
class ItemGroupActorBloc
    extends Bloc<ItemGroupActorEvent, ItemGroupActorState> {
  final IItemGroupRepository _groupRepository;

  ItemGroupActorBloc(this._groupRepository);

  @override
  ItemGroupActorState get initialState => const ItemGroupActorState.initial();
  @override
  Stream<ItemGroupActorState> mapEventToState(
    ItemGroupActorEvent event,
  ) async* {
    yield const ItemGroupActorState.actionInProgress();
    final possibleFailure =
        await _groupRepository.delete(event.categoryId, event.group);
    yield possibleFailure.fold(
      (f) => ItemGroupActorState.deleteFailure(f),
      (_) => const ItemGroupActorState.deleteSuccess(),
    );
  }
}
