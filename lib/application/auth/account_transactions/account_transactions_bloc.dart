import 'dart:async';

import 'package:Sepetim/domain/auth/auth_failure.dart';
import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:Sepetim/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'account_transactions_event.dart';
part 'account_transactions_state.dart';
part 'account_transactions_bloc.freezed.dart';

@injectable
class AccountTransactionsBloc
    extends Bloc<AccountTransactionsEvent, AccountTransactionsState> {
  final IAuthFacade _iAuthFacade;

  AccountTransactionsBloc(this._iAuthFacade);

  @override
  AccountTransactionsState get initialState =>
      AccountTransactionsState.initial();

  @override
  Stream<AccountTransactionsState> mapEventToState(
    AccountTransactionsEvent event,
  ) async* {
    yield state.copyWith(
      isProgressing: true,
      authFailureOrUnitOption: none(),
    );
    final failureOrSuccess = await _iAuthFacade.deleteAccount();

    yield state.copyWith(
      isProgressing: false,
      authFailureOrUnitOption: some(failureOrSuccess),
    );
  }
}
