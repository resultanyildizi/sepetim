import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.weakPassword({
    @required T failedValue,
  }) = WeakPassword<T>;

  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiLine({
    @required T failedValue,
  }) = MultiLine<T>;

  const factory ValueFailure.invalidImagePath({
    @required T failedValue,
  }) = InvalidImagePath<T>;

  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;

  const factory ValueFailure.invalidUrl({
    @required T failedValue,
  }) = InvalidUrl<T>;

  const factory ValueFailure.invalidPrice({
    @required T failedValue,
  }) = InvalidPrice<T>;
}
