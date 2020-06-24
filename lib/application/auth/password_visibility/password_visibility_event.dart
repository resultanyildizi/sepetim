part of 'password_visibility_bloc.dart';

@freezed
abstract class PasswordVisibilityEvent with _$PasswordVisibilityEvent {
  const factory PasswordVisibilityEvent.visibilityChanged() =
      _VisibilityChanged;
}
