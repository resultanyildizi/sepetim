part of 'account_transactions_bloc.dart';

@freezed
abstract class AccountTransactionsEvent with _$AccountTransactionsEvent {
  const factory AccountTransactionsEvent.resetState() = _ResetState;
  const factory AccountTransactionsEvent.accountDeleted() = _AccountDeleted;
  const factory AccountTransactionsEvent.currentPasswordVerified(
    String password,
  ) = _CurrentPasswordVerified;
}
