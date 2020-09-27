import 'dart:async';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/i_item_repository.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/item_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_actor_event.dart';
part 'item_actor_state.dart';
part 'item_actor_bloc.freezed.dart';

@injectable
class ItemActorBloc extends Bloc<ItemActorEvent, ItemActorState> {
  final IItemRepository _itemRepository;

  ItemActorBloc(this._itemRepository) : super(const ItemActorState.initial());

  @override
  Stream<ItemActorState> mapEventToState(
    ItemActorEvent event,
  ) async* {
    yield const ItemActorState.actionInProgress();
    final possibleFailure = await _itemRepository.delete(
        event.categoryId, event.groupId, event.item);
    yield possibleFailure.fold(
      (f) => ItemActorState.deleteFailure(f),
      (_) => const ItemActorState.deleteSuccess(),
    );
  }
}
