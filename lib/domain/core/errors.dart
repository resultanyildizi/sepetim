import 'package:Sepetim/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const String explanation =
        'Encountered a ValueFailure at an uncoverable point. Terminating.';
    return Error.safeToString('$explanation was: $valueFailure');
  }
}

class UnknownSignInType extends Error {
  @override
  String toString() => 'Encountered an unknown sign in type. Terminating.';
}

class NotAuthenticatedError extends Error {
  @override
  String toString() => 'Encountered an not authenticated user. Terminating.';
}
