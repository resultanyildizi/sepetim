import 'package:Sepetim/domain/category/value_objects.dart';
import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class Category implements _$Category {
  const Category._();
  const factory Category({
    @required UniqueId uid,
    @required ShortTitle title,
    @required CategoryColor color,
    @required ImagePath coverImagePath,
  }) = _Category;

  factory Category.empty() => Category(
        uid: UniqueId(),
        title: ShortTitle(''),
        color: CategoryColor(CategoryColor.predefinedColors[0]),
        coverImagePath: ImagePath.defaultPath(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(color.failureOrUnit)
        .andThen(coverImagePath.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
