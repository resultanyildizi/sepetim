import 'dart:ui';

import 'package:Sepetim/domain/category/category.dart';
import 'package:Sepetim/domain/category/value_objects.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

@freezed
abstract class CategoryDto implements _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    @JsonKey(ignore: true) String uid,
    @required String title,
    @required int color,
    @required String coverImagePath,
  }) = _CategoryDto;

  factory CategoryDto.fromDomain(Category category) {
    return CategoryDto(
      uid: category.uid.getOrCrash(),
      title: category.title.getOrCrash(),
      color: category.color.getOrCrash().value,
      coverImagePath: category.coverImagePath.getOrCrash(),
    );
  }
  Category toDomain() {
    return Category(
      uid: UniqueId.fromUniqueString(uid),
      title: ShortTitle(title),
      color: CategoryColor(Color(color)),
      coverImagePath: ImagePath(coverImagePath),
    );
  }

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  factory CategoryDto.fromFirestore(DocumentSnapshot doc) =>
      CategoryDto.fromJson(doc.data).copyWith(uid: doc.documentID);
}
