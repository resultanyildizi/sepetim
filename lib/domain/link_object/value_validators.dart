import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateLink(String input) {
  const urlRegex =
      r"""https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)""";

  String validatedInput = input;

  if (!input.startsWith('https://') && !input.startsWith('http://')) {
    validatedInput = 'http://$input';
  }
  if (RegExp(urlRegex).hasMatch(validatedInput)) {
    return right(validatedInput);
  } else {
    return left(ValueFailure.invalidUrl(failedValue: validatedInput));
  }
}
