part of 'account_transactions_bloc.dart';

@freezed
abstract class AccountTransactionsEvent with _$AccountTransactionsEvent {
  const factory AccountTransactionsEvent.stateReset() = _ResetState;
  const factory AccountTransactionsEvent.accountDeleted() = _AccountDeleted;
  const factory AccountTransactionsEvent.currentPasswordVerified(
    String password,
  ) = _CurrentPasswordVerified;
  const factory AccountTransactionsEvent.passwordChanged(String password) =
      _ChangePassword;
  const factory AccountTransactionsEvent.passwordUpdated() = _PasswordUpdated;
}
