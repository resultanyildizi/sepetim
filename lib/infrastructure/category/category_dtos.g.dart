// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDto _$_$_CategoryDtoFromJson(Map<String, dynamic> json) {
  return _$_CategoryDto(
    title: json['title'] as String,
    color: json['color'] as int,
    coverImagePath: json['coverImagePath'] as String,
  );
}

Map<String, dynamic> _$_$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color': instance.color,
      'coverImagePath': instance.coverImagePath,
    };
