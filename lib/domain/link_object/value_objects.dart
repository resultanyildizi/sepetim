import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_object.dart';
import 'package:Sepetim/domain/link_object/value_validators.dart';
import 'package:dartz/dartz.dart';

class Link extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Link(String input) {
    assert(input != null);
    return Link._(validateLink(input));
  }

  Link._(this.value);
}
