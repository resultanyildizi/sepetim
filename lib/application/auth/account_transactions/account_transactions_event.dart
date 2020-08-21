part of 'account_transactions_bloc.dart';

@freezed
abstract class AccountTransactionsEvent with _$AccountTransactionsEvent {
  const factory AccountTransactionsEvent.accountDeleted() = _AccountDeleted;
}
