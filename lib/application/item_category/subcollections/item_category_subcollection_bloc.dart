import 'dart:async';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'item_category_subcollection_event.dart';
part 'item_category_subcollection_state.dart';

part 'item_category_subcollection_bloc.freezed.dart';

@injectable
class ItemCategorySubcollectionBloc extends Bloc<ItemCategorySubcollectionEvent,
    ItemCategorySubcollectionState> {
  final IItemCategoryRepository _categoryRepository;

  ItemCategorySubcollectionBloc(this._categoryRepository);

  @override
  ItemCategorySubcollectionState get initialState =>
      ItemCategorySubcollectionState.initial();

  @override
  Stream<ItemCategorySubcollectionState> mapEventToState(
    ItemCategorySubcollectionEvent event,
  ) async* {
    final failureOrGroupCount =
        await _categoryRepository.getGroupCount(event.category);

    final groupCount = failureOrGroupCount.fold(
      (f) => NotNegativeIntegerNumber(0),
      (number) => number,
    );

    NotNegativeIntegerNumber itemCount;

    if (groupCount.getOrCrash() > 0) {
      final failureOrItemCount =
          await _categoryRepository.getItemCount(event.category);

      itemCount = failureOrItemCount.fold(
          (f) => NotNegativeIntegerNumber(0), (number) => number);
    } else {
      itemCount = NotNegativeIntegerNumber(0);
    }

    yield state.copyWith(groupCount: groupCount, itemCount: itemCount);
  }
}
