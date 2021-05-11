// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemCategoryDto _$ItemCategoryDtoFromJson(Map<String, dynamic> json) {
  return _ItemCategoryDto.fromJson(json);
}

/// @nodoc
class _$ItemCategoryDtoTearOff {
  const _$ItemCategoryDtoTearOff();

// ignore: unused_element
  _ItemCategoryDto call(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required int color,
      @required String coverImageUrl,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
      @required int creationTime,
      @required int groupCount,
      @required String userId}) {
    return _ItemCategoryDto(
      uid: uid,
      title: title,
      color: color,
      coverImageUrl: coverImageUrl,
      serverTimeStamp: serverTimeStamp,
      creationTime: creationTime,
      groupCount: groupCount,
      userId: userId,
    );
  }

// ignore: unused_element
  ItemCategoryDto fromJson(Map<String, Object> json) {
    return ItemCategoryDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemCategoryDto = _$ItemCategoryDtoTearOff();

/// @nodoc
mixin _$ItemCategoryDto {
  @JsonKey(ignore: true)
  String get uid;
  String get title;
  int get color;
  String get coverImageUrl;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  int get creationTime;
  int get groupCount;
  String get userId;

  Map<String, dynamic> toJson();
  $ItemCategoryDtoCopyWith<ItemCategoryDto> get copyWith;
}

/// @nodoc
abstract class $ItemCategoryDtoCopyWith<$Res> {
  factory $ItemCategoryDtoCopyWith(
          ItemCategoryDto value, $Res Function(ItemCategoryDto) then) =
      _$ItemCategoryDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      int color,
      String coverImageUrl,
      @ServerTimeStampConverter() FieldValue serverTimeStamp,
      int creationTime,
      int groupCount,
      String userId});
}

/// @nodoc
class _$ItemCategoryDtoCopyWithImpl<$Res>
    implements $ItemCategoryDtoCopyWith<$Res> {
  _$ItemCategoryDtoCopyWithImpl(this._value, this._then);

  final ItemCategoryDto _value;
  // ignore: unused_field
  final $Res Function(ItemCategoryDto) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImageUrl = freezed,
    Object serverTimeStamp = freezed,
    Object creationTime = freezed,
    Object groupCount = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      color: color == freezed ? _value.color : color as int,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      creationTime:
          creationTime == freezed ? _value.creationTime : creationTime as int,
      groupCount: groupCount == freezed ? _value.groupCount : groupCount as int,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemCategoryDtoCopyWith<$Res>
    implements $ItemCategoryDtoCopyWith<$Res> {
  factory _$ItemCategoryDtoCopyWith(
          _ItemCategoryDto value, $Res Function(_ItemCategoryDto) then) =
      __$ItemCategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      int color,
      String coverImageUrl,
      @ServerTimeStampConverter() FieldValue serverTimeStamp,
      int creationTime,
      int groupCount,
      String userId});
}

/// @nodoc
class __$ItemCategoryDtoCopyWithImpl<$Res>
    extends _$ItemCategoryDtoCopyWithImpl<$Res>
    implements _$ItemCategoryDtoCopyWith<$Res> {
  __$ItemCategoryDtoCopyWithImpl(
      _ItemCategoryDto _value, $Res Function(_ItemCategoryDto) _then)
      : super(_value, (v) => _then(v as _ItemCategoryDto));

  @override
  _ItemCategoryDto get _value => super._value as _ItemCategoryDto;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImageUrl = freezed,
    Object serverTimeStamp = freezed,
    Object creationTime = freezed,
    Object groupCount = freezed,
    Object userId = freezed,
  }) {
    return _then(_ItemCategoryDto(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      color: color == freezed ? _value.color : color as int,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      creationTime:
          creationTime == freezed ? _value.creationTime : creationTime as int,
      groupCount: groupCount == freezed ? _value.groupCount : groupCount as int,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemCategoryDto extends _ItemCategoryDto {
  const _$_ItemCategoryDto(
      {@JsonKey(ignore: true) this.uid,
      @required this.title,
      @required this.color,
      @required this.coverImageUrl,
      @required @ServerTimeStampConverter() this.serverTimeStamp,
      @required this.creationTime,
      @required this.groupCount,
      @required this.userId})
      : assert(title != null),
        assert(color != null),
        assert(coverImageUrl != null),
        assert(serverTimeStamp != null),
        assert(creationTime != null),
        assert(groupCount != null),
        assert(userId != null),
        super._();

  factory _$_ItemCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemCategoryDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String uid;
  @override
  final String title;
  @override
  final int color;
  @override
  final String coverImageUrl;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;
  @override
  final int creationTime;
  @override
  final int groupCount;
  @override
  final String userId;

  @override
  String toString() {
    return 'ItemCategoryDto(uid: $uid, title: $title, color: $color, coverImageUrl: $coverImageUrl, serverTimeStamp: $serverTimeStamp, creationTime: $creationTime, groupCount: $groupCount, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemCategoryDto &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverImageUrl, coverImageUrl)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
            (identical(other.groupCount, groupCount) ||
                const DeepCollectionEquality()
                    .equals(other.groupCount, groupCount)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(coverImageUrl) ^
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(groupCount) ^
      const DeepCollectionEquality().hash(userId);

  @override
  _$ItemCategoryDtoCopyWith<_ItemCategoryDto> get copyWith =>
      __$ItemCategoryDtoCopyWithImpl<_ItemCategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemCategoryDtoToJson(this);
  }
}

abstract class _ItemCategoryDto extends ItemCategoryDto {
  const _ItemCategoryDto._() : super._();
  const factory _ItemCategoryDto(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required int color,
      @required String coverImageUrl,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
      @required int creationTime,
      @required int groupCount,
      @required String userId}) = _$_ItemCategoryDto;

  factory _ItemCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_ItemCategoryDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  String get title;
  @override
  int get color;
  @override
  String get coverImageUrl;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  int get creationTime;
  @override
  int get groupCount;
  @override
  String get userId;
  @override
  _$ItemCategoryDtoCopyWith<_ItemCategoryDto> get copyWith;
}
