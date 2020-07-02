// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategoryTearOff {
  const _$CategoryTearOff();

  _Category call(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required CategoryColor color,
      @required ImagePath coverImagePath}) {
    return _Category(
      uid: uid,
      title: title,
      color: color,
      coverImagePath: coverImagePath,
    );
  }
}

// ignore: unused_element
const $Category = _$CategoryTearOff();

mixin _$Category {
  UniqueId get uid;
  ShortTitle get title;
  CategoryColor get color;
  ImagePath get coverImagePath;

  $CategoryCopyWith<Category> get copyWith;
}

abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uid,
      ShortTitle title,
      CategoryColor color,
      ImagePath coverImagePath});
}

class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      color: color == freezed ? _value.color : color as CategoryColor,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath as ImagePath,
    ));
  }
}

abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uid,
      ShortTitle title,
      CategoryColor color,
      ImagePath coverImagePath});
}

class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImagePath = freezed,
  }) {
    return _then(_Category(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      color: color == freezed ? _value.color : color as CategoryColor,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath as ImagePath,
    ));
  }
}

class _$_Category extends _Category with DiagnosticableTreeMixin {
  const _$_Category(
      {@required this.uid,
      @required this.title,
      @required this.color,
      @required this.coverImagePath})
      : assert(uid != null),
        assert(title != null),
        assert(color != null),
        assert(coverImagePath != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final ShortTitle title;
  @override
  final CategoryColor color;
  @override
  final ImagePath coverImagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(uid: $uid, title: $title, color: $color, coverImagePath: $coverImagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('coverImagePath', coverImagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
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
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);
}

abstract class _Category extends Category {
  const _Category._() : super._();
  const factory _Category(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required CategoryColor color,
      @required ImagePath coverImagePath}) = _$_Category;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  CategoryColor get color;
  @override
  ImagePath get coverImagePath;
  @override
  _$CategoryCopyWith<_Category> get copyWith;
}
