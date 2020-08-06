import 'dart:async';

import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_category/item_category_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'item_category_actor_event.dart';
part 'item_category_actor_state.dart';
part 'item_category_actor_bloc.freezed.dart';

@injectable
class ItemCategoryActorBloc
    extends Bloc<ItemCategoryActorEvent, ItemCategoryActorState> {
  final IItemCategoryRepository _itemCategoryRepository;

  ItemCategoryActorBloc(this._itemCategoryRepository);

  @override
  ItemCategoryActorState get initialState =>
      const ItemCategoryActorState.initial();
  @override
  Stream<ItemCategoryActorState> mapEventToState(
    ItemCategoryActorEvent event,
  ) async* {
    yield const ItemCategoryActorState.actionInProgress();
    final possibleFailure =
        await _itemCategoryRepository.delete(event.category);
    await Future.delayed(const Duration(milliseconds: 100));
    yield possibleFailure.fold(
      (f) => ItemCategoryActorState.deleteFailure(f),
      (r) => const ItemCategoryActorState.deleteSuccess(),
    );
  }
}
