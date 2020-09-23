part of 'reset_password_form_bloc.dart';

@freezed
abstract class ResetPasswordFormEvent with _$ResetPasswordFormEvent {
  const factory ResetPasswordFormEvent.emailChanged({String emailAddress}) =
      EmailChanged;
  const factory ResetPasswordFormEvent.resetLinkSent({String languageCode}) =
      ResetLinkSent;
}
