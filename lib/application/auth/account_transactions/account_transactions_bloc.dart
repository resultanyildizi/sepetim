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
    yield* event.map(
      stateReset: (e) async* {
        yield state.copyWith(
          isProgressing: false,
          showErrorMessages: false,
          isPasswordVerified: false,
          isPasswordUpdated: false,
          isAccountDeleted: false,
          authFailureOrUnitOption: none(),
        );
      },
      accountDeleted: (e) async* {
        yield state.copyWith(
          isProgressing: true,
          isAccountDeleted: false,
          authFailureOrUnitOption: none(),
        );
        final failureOrSuccess = await _iAuthFacade.deleteAccount();

        yield state.copyWith(
          isProgressing: false,
          isAccountDeleted: true,
          showErrorMessages: true,
          isPasswordVerified: false,
          isPasswordUpdated: false,
          authFailureOrUnitOption: some(failureOrSuccess),
        );
      },
      currentPasswordVerified: (e) async* {
        yield state.copyWith(
          isProgressing: true,
          isAccountDeleted: false,
          isPasswordVerified: false,
          isPasswordUpdated: false,
          authFailureOrUnitOption: none(),
        );

        final failureOrSuccess =
            await _iAuthFacade.verifyUsersCurrentPassword(password: e.password);

        yield state.copyWith(
          isProgressing: false,
          showErrorMessages: true,
          isPasswordVerified: true,
          authFailureOrUnitOption: some(failureOrSuccess),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          isPasswordVerified: true,
          isPasswordUpdated: false,
          authFailureOrUnitOption: none(),
        );
      },
      passwordUpdated: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isProgressing: true,
          isAccountDeleted: false,
          showErrorMessages: false,
          isPasswordVerified: false,
          isPasswordUpdated: false,
          authFailureOrUnitOption: none(),
        );

        if (state.password.isValid) {
          failureOrSuccess =
              await _iAuthFacade.updatePassword(password: state.password);
        }

        yield state.copyWith(
          isProgressing: false,
          showErrorMessages: true,
          isPasswordUpdated: true,
          authFailureOrUnitOption: some(failureOrSuccess),
        );
      },
    );
  }
}
