part of 'auth_bloc_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.signedOut() = _SignedOut;
}
