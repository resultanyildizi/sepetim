// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

class _$CategoryDtoTearOff {
  const _$CategoryDtoTearOff();

  _CategoryDto call(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required int color,
      @required String coverImagePath}) {
    return _CategoryDto(
      uid: uid,
      title: title,
      color: color,
      coverImagePath: coverImagePath,
    );
  }
}

// ignore: unused_element
const $CategoryDto = _$CategoryDtoTearOff();

mixin _$CategoryDto {
  @JsonKey(ignore: true)
  String get uid;
  String get title;
  int get color;
  String get coverImagePath;

  Map<String, dynamic> toJson();
  $CategoryDtoCopyWith<CategoryDto> get copyWith;
}

abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      int color,
      String coverImagePath});
}

class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  final CategoryDto _value;
  // ignore: unused_field
  final $Res Function(CategoryDto) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      color: color == freezed ? _value.color : color as int,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath as String,
    ));
  }
}

abstract class _$CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(
          _CategoryDto value, $Res Function(_CategoryDto) then) =
      __$CategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      int color,
      String coverImagePath});
}

class __$CategoryDtoCopyWithImpl<$Res> extends _$CategoryDtoCopyWithImpl<$Res>
    implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(
      _CategoryDto _value, $Res Function(_CategoryDto) _then)
      : super(_value, (v) => _then(v as _CategoryDto));

  @override
  _CategoryDto get _value => super._value as _CategoryDto;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImagePath = freezed,
  }) {
    return _then(_CategoryDto(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      color: color == freezed ? _value.color : color as int,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath as String,
    ));
  }
}

@JsonSerializable()
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto(
      {@JsonKey(ignore: true) this.uid,
      @required this.title,
      @required this.color,
      @required this.coverImagePath})
      : assert(title != null),
        assert(color != null),
        assert(coverImagePath != null),
        super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String uid;
  @override
  final String title;
  @override
  final int color;
  @override
  final String coverImagePath;

  @override
  String toString() {
    return 'CategoryDto(uid: $uid, title: $title, color: $color, coverImagePath: $coverImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryDto &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.coverImagePath, coverImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.coverImagePath, coverImagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(coverImagePath);

  @override
  _$CategoryDtoCopyWith<_CategoryDto> get copyWith =>
      __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryDtoToJson(this);
  }
}

abstract class _CategoryDto extends CategoryDto {
  const _CategoryDto._() : super._();
  const factory _CategoryDto(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required int color,
      @required String coverImagePath}) = _$_CategoryDto;

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  String get title;
  @override
  int get color;
  @override
  String get coverImagePath;
  @override
  _$CategoryDtoCopyWith<_CategoryDto> get copyWith;
}
