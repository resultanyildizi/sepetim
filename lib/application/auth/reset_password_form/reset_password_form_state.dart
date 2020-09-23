part of 'reset_password_form_bloc.dart';

@freezed
abstract class ResetPasswordFormState with _$ResetPasswordFormState {
  const factory ResetPasswordFormState({
    @required EmailAddress emailAddress,
    @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
    @required bool showErrorMessages,
    @required bool isSending,
    @required bool isSent,
    @required bool isSuccessful,
  }) = _ResetPasswordFormState;

  factory ResetPasswordFormState.initial() => ResetPasswordFormState(
        emailAddress: EmailAddress(''),
        showErrorMessages: false,
        isSending: false,
        isSent: false,
        isSuccessful: false,
        authFailureOrUnitOption: none(),
      );
}
