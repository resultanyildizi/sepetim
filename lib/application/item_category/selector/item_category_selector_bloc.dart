import 'dart:async';

import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'item_category_selector_event.dart';
part 'item_category_selector_state.dart';

part 'item_category_selector_bloc.freezed.dart';

@injectable
class ItemCategorySelectorBloc
    extends Bloc<ItemCategorySelectorEvent, ItemCategorySelectorState> {
  ItemCategorySelectorBloc() : super(ItemCategorySelectorState.initial());

  @override
  Stream<ItemCategorySelectorState> mapEventToState(
    ItemCategorySelectorEvent event,
  ) async* {
    Option<ItemCategory> selectedCategory;

    if (state.selectedCategory.fold(
      () => false,
      (current) => current == event.category,
    )) {
      selectedCategory = none();
    } else {
      selectedCategory = some(event.category);
    }

    yield state.copyWith(
      selectedCategory: selectedCategory,
    );
  }
}
