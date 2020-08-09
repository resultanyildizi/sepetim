// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_group_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemGroupDto _$_$_ItemGroupDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemGroupDto(
    title: json['title'] as String,
    creationTime: json['creationTime'] as int,
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ItemGroupDtoToJson(_$_ItemGroupDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'creationTime': instance.creationTime,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
