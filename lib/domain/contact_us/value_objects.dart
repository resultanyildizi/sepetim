import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_object.dart';
import 'package:Sepetim/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class EmailMessage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailMessage(String input) {
    assert(input != null);
    return EmailMessage._(
      validateStringNotEmpty(input)
          .flatMap((input) => validateMinStringLength(input, 10)),
    );
  }

  const EmailMessage._(this.value);
}
