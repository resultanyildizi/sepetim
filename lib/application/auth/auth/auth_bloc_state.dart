part of 'auth_bloc_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({
    @required SignInType signInType,
  }) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
