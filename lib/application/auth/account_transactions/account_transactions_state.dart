part of 'account_transactions_bloc.dart';

@freezed
abstract class AccountTransactionsState with _$AccountTransactionsState {
  const factory AccountTransactionsState({
    @required Password password,
    @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
    @required bool isProgressing,
    @required bool showErrorMessages,
    @required bool isPasswordVerified,
    @required bool isPasswordUpdated,
    @required bool isAccountDeleted,
  }) = _AccountTransactionsState;

  factory AccountTransactionsState.initial() => _AccountTransactionsState(
        password: Password(''),
        authFailureOrUnitOption: none(),
        isProgressing: false,
        showErrorMessages: false,
        isPasswordVerified: false,
        isPasswordUpdated: false,
        isAccountDeleted: false,
      );
}
