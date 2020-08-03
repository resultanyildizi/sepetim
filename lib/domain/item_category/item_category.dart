import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category.freezed.dart';

@freezed
abstract class ItemCategory implements _$ItemCategory {
  const ItemCategory._();
  const factory ItemCategory({
    @required UniqueId uid,
    @required ShortTitle title,
    @required ItemCategoryColor color,
    @required ImageUrl coverImageUrl,
    @required DateTime creationTime,
  }) = _ItemCategory;

  factory ItemCategory.empty() => ItemCategory(
      uid: UniqueId(),
      title: ShortTitle(''),
      color: ItemCategoryColor(ItemCategoryColor.predefinedColors[0]),
      coverImageUrl: ImageUrl.defaultUrl(),
      creationTime: DateTime.now().toUtc());

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(color.failureOrUnit)
        .andThen(coverImageUrl.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
