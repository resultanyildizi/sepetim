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
      @required ImageUrl coverImageUrl,
      @required DateTime creationTime}) {
    return _ItemCategory(
      uid: uid,
      title: title,
      color: color,
      coverImageUrl: coverImageUrl,
      creationTime: creationTime,
    );
  }
}

// ignore: unused_element
const $ItemCategory = _$ItemCategoryTearOff();

mixin _$ItemCategory {
  UniqueId get uid;
  ShortTitle get title;
  ItemCategoryColor get color;
  ImageUrl get coverImageUrl;
  DateTime get creationTime;

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
      ImageUrl coverImageUrl,
      DateTime creationTime});
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
    Object coverImageUrl = freezed,
    Object creationTime = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      color: color == freezed ? _value.color : color as ItemCategoryColor,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl as ImageUrl,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
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
      ImageUrl coverImageUrl,
      DateTime creationTime});
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
    Object coverImageUrl = freezed,
    Object creationTime = freezed,
  }) {
    return _then(_ItemCategory(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      color: color == freezed ? _value.color : color as ItemCategoryColor,
      coverImageUrl: coverImageUrl == freezed
          ? _value.coverImageUrl
          : coverImageUrl as ImageUrl,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
    ));
  }
}

class _$_ItemCategory extends _ItemCategory with DiagnosticableTreeMixin {
  const _$_ItemCategory(
      {@required this.uid,
      @required this.title,
      @required this.color,
      @required this.coverImageUrl,
      @required this.creationTime})
      : assert(uid != null),
        assert(title != null),
        assert(color != null),
        assert(coverImageUrl != null),
        assert(creationTime != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final ShortTitle title;
  @override
  final ItemCategoryColor color;
  @override
  final ImageUrl coverImageUrl;
  @override
  final DateTime creationTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategory(uid: $uid, title: $title, color: $color, coverImageUrl: $coverImageUrl, creationTime: $creationTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemCategory'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('coverImageUrl', coverImageUrl))
      ..add(DiagnosticsProperty('creationTime', creationTime));
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
            (identical(other.coverImageUrl, coverImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverImageUrl, coverImageUrl)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(coverImageUrl) ^
      const DeepCollectionEquality().hash(creationTime);

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
      @required ImageUrl coverImageUrl,
      @required DateTime creationTime}) = _$_ItemCategory;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  ItemCategoryColor get color;
  @override
  ImageUrl get coverImageUrl;
  @override
  DateTime get creationTime;
  @override
  _$ItemCategoryCopyWith<_ItemCategory> get copyWith;
}
