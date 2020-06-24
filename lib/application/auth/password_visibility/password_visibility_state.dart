part of 'password_visibility_bloc.dart';

@freezed
abstract class PasswordVisibilityState with _$PasswordVisibilityState {
  const factory PasswordVisibilityState({@required bool isVisible}) =
      _PasswordVisibilityState;

  factory PasswordVisibilityState.initial() => const PasswordVisibilityState(
        isVisible: false,
      );
}
