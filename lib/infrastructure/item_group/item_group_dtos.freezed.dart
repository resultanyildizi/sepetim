// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_group_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemGroupDto _$ItemGroupDtoFromJson(Map<String, dynamic> json) {
  return _ItemGroupDto.fromJson(json);
}

/// @nodoc
class _$ItemGroupDtoTearOff {
  const _$ItemGroupDtoTearOff();

// ignore: unused_element
  _ItemGroupDto call(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required int creationTime,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) {
    return _ItemGroupDto(
      uid: uid,
      title: title,
      creationTime: creationTime,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  ItemGroupDto fromJson(Map<String, Object> json) {
    return ItemGroupDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemGroupDto = _$ItemGroupDtoTearOff();

/// @nodoc
mixin _$ItemGroupDto {
  @JsonKey(ignore: true)
  String get uid;
  String get title;
  int get creationTime;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ItemGroupDtoCopyWith<ItemGroupDto> get copyWith;
}

/// @nodoc
abstract class $ItemGroupDtoCopyWith<$Res> {
  factory $ItemGroupDtoCopyWith(
          ItemGroupDto value, $Res Function(ItemGroupDto) then) =
      _$ItemGroupDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      int creationTime,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$ItemGroupDtoCopyWithImpl<$Res> implements $ItemGroupDtoCopyWith<$Res> {
  _$ItemGroupDtoCopyWithImpl(this._value, this._then);

  final ItemGroupDto _value;
  // ignore: unused_field
  final $Res Function(ItemGroupDto) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object creationTime = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      creationTime:
          creationTime == freezed ? _value.creationTime : creationTime as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$ItemGroupDtoCopyWith<$Res>
    implements $ItemGroupDtoCopyWith<$Res> {
  factory _$ItemGroupDtoCopyWith(
          _ItemGroupDto value, $Res Function(_ItemGroupDto) then) =
      __$ItemGroupDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      int creationTime,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$ItemGroupDtoCopyWithImpl<$Res> extends _$ItemGroupDtoCopyWithImpl<$Res>
    implements _$ItemGroupDtoCopyWith<$Res> {
  __$ItemGroupDtoCopyWithImpl(
      _ItemGroupDto _value, $Res Function(_ItemGroupDto) _then)
      : super(_value, (v) => _then(v as _ItemGroupDto));

  @override
  _ItemGroupDto get _value => super._value as _ItemGroupDto;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object creationTime = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ItemGroupDto(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      creationTime:
          creationTime == freezed ? _value.creationTime : creationTime as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemGroupDto extends _ItemGroupDto {
  const _$_ItemGroupDto(
      {@JsonKey(ignore: true) this.uid,
      @required this.title,
      @required this.creationTime,
      @required @ServerTimeStampConverter() this.serverTimeStamp})
      : assert(title != null),
        assert(creationTime != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_ItemGroupDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemGroupDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String uid;
  @override
  final String title;
  @override
  final int creationTime;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ItemGroupDto(uid: $uid, title: $title, creationTime: $creationTime, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemGroupDto &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ItemGroupDtoCopyWith<_ItemGroupDto> get copyWith =>
      __$ItemGroupDtoCopyWithImpl<_ItemGroupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemGroupDtoToJson(this);
  }
}

abstract class _ItemGroupDto extends ItemGroupDto {
  const _ItemGroupDto._() : super._();
  const factory _ItemGroupDto(
          {@JsonKey(ignore: true) String uid,
          @required String title,
          @required int creationTime,
          @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) =
      _$_ItemGroupDto;

  factory _ItemGroupDto.fromJson(Map<String, dynamic> json) =
      _$_ItemGroupDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  String get title;
  @override
  int get creationTime;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ItemGroupDtoCopyWith<_ItemGroupDto> get copyWith;
}
