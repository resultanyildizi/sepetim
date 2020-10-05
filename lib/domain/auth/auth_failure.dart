import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.deleteAccountError() = _DeleteAccountError;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.networkException() = _NetworkException;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
  const factory AuthFailure.tooManyRequests() = _TooManyRequests;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.accountAlreadyExists() = _AccountAlreadyExists;
  const factory AuthFailure.accountAlreadyLinked() = _AccountAlreadyLinked;
  const factory AuthFailure.invalidCredential() = _InvalidCredential;
  const factory AuthFailure.userNotUsingEmailProvider() =
      _UserNotUsingEmailProvider;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
}
