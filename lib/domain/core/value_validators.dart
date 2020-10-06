import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure.tooShortMessage(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiLine(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateImageFile(String input) {
  const imagePathRegex = r"""([^\s]+(\.(jpe?g|(png|gif|bmp|tiff))$))""";

  if (RegExp(imagePathRegex, caseSensitive: false).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidImagePath(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<int>, int> validateNotNegativeNumber(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNumberSign(failedValue: input));
  }
}
