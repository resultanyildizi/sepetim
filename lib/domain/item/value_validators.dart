import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<double>, double> validatePrice(String input) {
  final price = double.tryParse(input);

  if (price == null) {
    return left(const ValueFailure.invalidPrice(failedValue: -1));
  } else if ((price >= 0.00001 || price == 0) && price < 1e13) {
    return right(price);
  } else {
    return left(ValueFailure.invalidPrice(failedValue: price));
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
