// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$_$_ItemDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemDto(
    title: json['title'] as String,
    price: (json['price'] as num)?.toDouble(),
    description: json['description'] as String,
    status: json['status'] as String,
    imageUrls: (json['imageUrls'] as List)?.map((e) => e as String)?.toList(),
    selectedIndex: json['selectedIndex'] as int,
    linkObjects: (json['linkObjects'] as List)
        ?.map((e) => e == null
            ? null
            : LinkObjectDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isFavorite: json['isFavorite'] as bool,
  );
}

Map<String, dynamic> _$_$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'status': instance.status,
      'imageUrls': instance.imageUrls,
      'selectedIndex': instance.selectedIndex,
      'linkObjects': instance.linkObjects,
      'isFavorite': instance.isFavorite,
    };

_$_LinkObjectDto _$_$_LinkObjectDtoFromJson(Map<String, dynamic> json) {
  return _$_LinkObjectDto(
    uid: json['uid'] as String,
    title: json['title'] as String,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$_LinkObjectDtoToJson(_$_LinkObjectDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'link': instance.link,
    };
