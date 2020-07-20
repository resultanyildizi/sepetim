import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<double>, double> validatePrice(double input) {
  if (input >= 0.0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPrice(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateSelectedIndex(int input, int maxIndex) {
  if (input >= 0 && input <= maxIndex) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxIndex));
  }
}
