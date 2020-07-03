// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemCategoryTearOff {
  const _$ItemCategoryTearOff();

  _ItemCategory call(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required ItemCategoryColor color,
      @required ImageUrl coverImagePath}) {
    return _ItemCategory(
      uid: uid,
      title: title,
      color: color,
      coverImagePath: coverImagePath,
    );
  }
}

// ignore: unused_element
const $ItemCategory = _$ItemCategoryTearOff();

mixin _$ItemCategory {
  UniqueId get uid;
  ShortTitle get title;
  ItemCategoryColor get color;
  ImageUrl get coverImagePath;

  $ItemCategoryCopyWith<ItemCategory> get copyWith;
}

abstract class $ItemCategoryCopyWith<$Res> {
  factory $ItemCategoryCopyWith(
          ItemCategory value, $Res Function(ItemCategory) then) =
      _$ItemCategoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uid,
      ShortTitle title,
      ItemCategoryColor color,
      ImageUrl coverImagePath});
}

class _$ItemCategoryCopyWithImpl<$Res> implements $ItemCategoryCopyWith<$Res> {
  _$ItemCategoryCopyWithImpl(this._value, this._then);

  final ItemCategory _value;
  // ignore: unused_field
  final $Res Function(ItemCategory) _then;

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
      color: color == freezed ? _value.color : color as ItemCategoryColor,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath as ImageUrl,
    ));
  }
}

abstract class _$ItemCategoryCopyWith<$Res>
    implements $ItemCategoryCopyWith<$Res> {
  factory _$ItemCategoryCopyWith(
          _ItemCategory value, $Res Function(_ItemCategory) then) =
      __$ItemCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uid,
      ShortTitle title,
      ItemCategoryColor color,
      ImageUrl coverImagePath});
}

class __$ItemCategoryCopyWithImpl<$Res> extends _$ItemCategoryCopyWithImpl<$Res>
    implements _$ItemCategoryCopyWith<$Res> {
  __$ItemCategoryCopyWithImpl(
      _ItemCategory _value, $Res Function(_ItemCategory) _then)
      : super(_value, (v) => _then(v as _ItemCategory));

  @override
  _ItemCategory get _value => super._value as _ItemCategory;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object color = freezed,
    Object coverImagePath = freezed,
  }) {
    return _then(_ItemCategory(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      color: color == freezed ? _value.color : color as ItemCategoryColor,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath as ImageUrl,
    ));
  }
}

class _$_ItemCategory extends _ItemCategory with DiagnosticableTreeMixin {
  const _$_ItemCategory(
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
  final ItemCategoryColor color;
  @override
  final ImageUrl coverImagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategory(uid: $uid, title: $title, color: $color, coverImagePath: $coverImagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemCategory'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('coverImagePath', coverImagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemCategory &&
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
  _$ItemCategoryCopyWith<_ItemCategory> get copyWith =>
      __$ItemCategoryCopyWithImpl<_ItemCategory>(this, _$identity);
}

abstract class _ItemCategory extends ItemCategory {
  const _ItemCategory._() : super._();
  const factory _ItemCategory(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required ItemCategoryColor color,
      @required ImageUrl coverImagePath}) = _$_ItemCategory;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  ItemCategoryColor get color;
  @override
  ImageUrl get coverImagePath;
  @override
  _$ItemCategoryCopyWith<_ItemCategory> get copyWith;
}
