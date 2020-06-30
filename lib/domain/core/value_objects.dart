import 'dart:io';

import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_object.dart';
import 'package:Sepetim/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(
        Uuid().v1(),
      ),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class ShortTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory ShortTitle(String input) {
    assert(input != null);
    return ShortTitle._(
      validateStringNotEmpty(input)
          .flatMap((input) => validateMaxStringLength(input, maxLength))
          .flatMap((input) => validateSingleLine(input)),
    );
  }

  const ShortTitle._(this.value);
}

class ImagePath extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImagePath(String input) {
    assert(input != null);
    return ImagePath._(validateImageFile(input));
  }

  // TODO: Change the default image path
  factory ImagePath.defaultPath() {
    return ImagePath._(validateImageFile(
        'gs://sepetim-e2723.appspot.com/app_images/default.png'));
  }

  const ImagePath._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(validateMaxLength(input, maxLength));
  }

  const List3._(this.value);

  int get length => value.getOrElse(() => emptyList()).size;

  bool get isFull => length == maxLength;
}

class List5<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 5;

  factory List5(KtList<T> input) {
    assert(input != null);
    return List5._(validateMaxLength(input, maxLength));
  }

  const List5._(this.value);

  int get length => value.getOrElse(() => emptyList()).size;

  bool get isFull => length == maxLength;
}
