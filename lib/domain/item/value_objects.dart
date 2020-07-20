import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_object.dart';
import 'package:Sepetim/domain/core/value_validators.dart';
import 'package:Sepetim/domain/item/value_validators.dart';
import 'package:dartz/dartz.dart';

class DescriptionBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 500;

  factory DescriptionBody(String input) {
    assert(input != null);
    return DescriptionBody._(validateMaxStringLength(input, maxLength));
  }

  DescriptionBody._(this.value);
}

// TODO: Localize the predefined values
class Status extends ValueObject<String> {
  static const List<String> predefinedStatuses = [
    "UNKNOWN",
    "BOUGHT",
    "UNCERTAIN",
    "MAYBE"
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory Status(String input) {
    assert(input != null);
    return Status._(right(input));
  }

  const Status._(this.value);
}

class Price extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Price(double input) {
    assert(input != null);
    return Price._(validatePrice(input));
  }

  Price._(this.value);
}

class SelectedIndex extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const maxIndex = 2;

  factory SelectedIndex(int input) {
    assert(input != null);
    return SelectedIndex._(validateSelectedIndex(input, maxIndex));
  }

  SelectedIndex._(this.value);
}
