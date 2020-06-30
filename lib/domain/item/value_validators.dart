import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateLink(String input) {
  const urlRegex =
      r"""^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$""";

  if (RegExp(urlRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUrl(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validatePrice(double input) {
  if (input >= 0.0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPrice(failedValue: input));
  }
}
