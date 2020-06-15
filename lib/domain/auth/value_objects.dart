import 'package:Sepetim/domain/auth/value_validators.dart';
import 'package:dartz/dartz.dart';

import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmail(input));
  }
  EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  Password._(this.value);
}
