part of 'account_transactions_bloc.dart';

@freezed
abstract class AccountTransactionsState with _$AccountTransactionsState {
  const factory AccountTransactionsState({
    @required Password password,
    @required Password confirmPassword,
    @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
    @required bool isProgressing,
    @required bool showErrorMessages,
  }) = _AccountTransactionsState;

  factory AccountTransactionsState.initial() => _AccountTransactionsState(
        password: Password(''),
        confirmPassword: Password(''),
        authFailureOrUnitOption: none(),
        isProgressing: false,
        showErrorMessages: false,
      );
}
