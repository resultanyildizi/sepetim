import 'dart:async';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/item_group/item_group_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_group_form_event.dart';
part 'item_group_form_state.dart';

part 'item_group_form_bloc.freezed.dart';

@injectable
class ItemGroupFormBloc extends Bloc<ItemGroupFormEvent, ItemGroupFormState> {
  final IItemGroupRepository _groupRepository;

  ItemGroupFormBloc(this._groupRepository)
      : super(ItemGroupFormState.initial());

  @override
  Stream<ItemGroupFormState> mapEventToState(
    ItemGroupFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initalOption.fold(
            () => state,
            (initialGroup) => state.copyWith(
                  group: initialGroup,
                  isEditing: true,
                ));
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          group: state.group.copyWith(
            title: ShortTitle(e.title),
          ),
          isChanged: true,
          groupFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ItemGroupFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          groupFailureOrSuccessOption: none(),
        );

        if (state.group.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _groupRepository.update(e.categoryId, state.group)
              : await _groupRepository.create(e.categoryId, state.group);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          groupFailureOrSuccessOption: optionOf(failureOrSuccess),
          isChanged: state.isChanged && !failureOrSuccess.isRight(),
        );
      },
    );
  }
}
