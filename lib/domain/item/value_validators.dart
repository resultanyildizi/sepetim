import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<double>, double> validatePrice(double input) {
  if (input >= 0.0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPrice(failedValue: input));
  }
}
