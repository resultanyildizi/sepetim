import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_group_dtos.freezed.dart';
part 'item_group_dtos.g.dart';

@freezed
abstract class ItemGroupDto implements _$ItemGroupDto {
  const ItemGroupDto._();
  const factory ItemGroupDto({
    @JsonKey(ignore: true) String uid,
    @required String title,
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _ItemGroupDto;

  factory ItemGroupDto.fromDomain(ItemGroup group) {
    return ItemGroupDto(
      uid: group.uid.getOrCrash(),
      title: group.title.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  ItemGroup toDomain() {
    return ItemGroup(
      uid: UniqueId.fromUniqueString(uid),
      title: ShortTitle(title),
    );
  }

  factory ItemGroupDto.fromJson(Map<String, dynamic> json) =>
      _$ItemGroupDtoFromJson(json);
  factory ItemGroupDto.fromFirestore(DocumentSnapshot doc) =>
      ItemGroupDto.fromJson(doc.data).copyWith(uid: doc.documentID);
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
