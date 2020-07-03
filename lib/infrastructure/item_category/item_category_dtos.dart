import 'dart:ui';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_category/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category_dtos.freezed.dart';
part 'item_category_dtos.g.dart';

@freezed
abstract class ItemCategoryDto implements _$ItemCategoryDto {
  const ItemCategoryDto._();

  const factory ItemCategoryDto({
    @JsonKey(ignore: true) String uid,
    @required String title,
    @required int color,
    @required String coverImageUrl,
  }) = _ItemCategoryDto;

  factory ItemCategoryDto.fromDomain(ItemCategory category) {
    return ItemCategoryDto(
      uid: category.uid.getOrCrash(),
      title: category.title.getOrCrash(),
      color: category.color.getOrCrash().value,
      coverImageUrl: category.coverImageUrl.getOrCrash(),
    );
  }
  ItemCategory toDomain() {
    return ItemCategory(
      uid: UniqueId.fromUniqueString(uid),
      title: ShortTitle(title),
      color: ItemCategoryColor(Color(color)),
      coverImageUrl: ImageUrl(coverImageUrl),
    );
  }

  factory ItemCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryDtoFromJson(json);

  factory ItemCategoryDto.fromFirestore(DocumentSnapshot doc) =>
      ItemCategoryDto.fromJson(doc.data).copyWith(uid: doc.documentID);
}
