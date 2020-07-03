// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_category_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemCategoryDto _$_$_ItemCategoryDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemCategoryDto(
    title: json['title'] as String,
    color: json['color'] as int,
    coverImageUrl: json['coverImageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_ItemCategoryDtoToJson(_$_ItemCategoryDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color': instance.color,
      'coverImageUrl': instance.coverImageUrl,
    };
