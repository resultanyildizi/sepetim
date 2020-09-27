import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:Sepetim/domain/link_object/link_object.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/link_object/value_objects.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:kt_dart/kt.dart';
part 'item_dtos.freezed.dart';

@freezed
abstract class ItemDto implements _$ItemDto {
  const ItemDto._();
  const factory ItemDto({
    @JsonKey(ignore: true) String uid,
    @required String title,
    @required double price,
    @required String description,
    @required List<String> imageUrls,
    @required int selectedIndex,
    @required List<LinkObjectDto> linkObjects,
    @required bool isFavorite,
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
    @required int lastEditTime,
  }) = _ItemDto;

  factory ItemDto.fromDomain(Item item) {
    return ItemDto(
      uid: item.uid.getOrCrash(),
      title: item.title.getOrCrash(),
      price: item.price.getOrCrash(),
      description: item.description.getOrCrash(),
      imageUrls: item.imageUrls
          .getOrCrash()
          .map((imageUrl) => imageUrl.getOrCrash())
          .asList(),
      selectedIndex: item.selectedIndex.getOrCrash(),
      linkObjects: item.linkObjects
          .getOrCrash()
          .map((linkObject) => LinkObjectDto.fromDomain(linkObject))
          .asList(),
      isFavorite: item.isFavorite,
      serverTimeStamp: FieldValue.serverTimestamp(),
      lastEditTime: item.lastEditTime.millisecondsSinceEpoch,
    );
  }

  Item toDomain() {
    return Item(
      uid: UniqueId.fromUniqueString(uid),
      title: ShortTitle(title),
      price: Price(price.toString()),
      description: DescriptionBody(description),
      imageUrls: List3(
          imageUrls.map((imageUrl) => ImageUrl(imageUrl)).toImmutableList()),
      isFavorite: isFavorite,
      linkObjects: List5(
        linkObjects
            .map((linkObjectDto) => linkObjectDto.toDomain())
            .toImmutableList(),
      ),
      selectedIndex: SelectedIndex(selectedIndex),
      lastEditTime: DateTime.fromMillisecondsSinceEpoch(lastEditTime),
    );
  }

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);

  factory ItemDto.fromFirestore(DocumentSnapshot doc) {
    return ItemDto.fromJson(doc.data()).copyWith(uid: doc.id);
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class LinkObjectDto implements _$LinkObjectDto {
  const LinkObjectDto._();
  const factory LinkObjectDto({
    @required String uid,
    @required String title,
    @required String link,
  }) = _LinkObjectDto;

  factory LinkObjectDto.fromDomain(LinkObject linkObject) {
    return LinkObjectDto(
      uid: linkObject.uid.getOrCrash(),
      title: linkObject.title.getOrCrash(),
      link: linkObject.link.getOrCrash(),
    );
  }

  LinkObject toDomain() {
    return LinkObject(
      uid: UniqueId.fromUniqueString(uid),
      title: ShortTitle(title),
      link: Link(link),
    );
  }

  factory LinkObjectDto.fromJson(Map<String, dynamic> json) =>
      _$LinkObjectDtoFromJson(json);
}

// JSON FILE
_$_ItemDto _$_$_ItemDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemDto(
    title: json['title'] as String,
    price: (json['price'] as num)?.toDouble(),
    description: json['description'] as String,
    imageUrls: (json['imageUrls'] as List)?.map((e) => e as String)?.toList(),
    selectedIndex: json['selectedIndex'] as int,
    linkObjects: (json['linkObjects'] as List)
        ?.map((e) => e == null
            ? null
            : LinkObjectDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isFavorite: json['isFavorite'] as bool,
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
    lastEditTime: json['lastEditTime'] as int,
  );
}

Map<String, dynamic> _$_$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'imageUrls': instance.imageUrls,
      'selectedIndex': instance.selectedIndex,
      'linkObjects': instance.linkObjects?.map((e) => e?.toJson())?.toList(),
      'isFavorite': instance.isFavorite,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
      'lastEditTime': instance.lastEditTime,
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
