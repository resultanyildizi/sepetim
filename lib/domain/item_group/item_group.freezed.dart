// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemGroupTearOff {
  const _$ItemGroupTearOff();

  _ItemGroup call({@required UniqueId uid, @required ShortTitle title}) {
    return _ItemGroup(
      uid: uid,
      title: title,
    );
  }
}

// ignore: unused_element
const $ItemGroup = _$ItemGroupTearOff();

mixin _$ItemGroup {
  UniqueId get uid;
  ShortTitle get title;

  $ItemGroupCopyWith<ItemGroup> get copyWith;
}

abstract class $ItemGroupCopyWith<$Res> {
  factory $ItemGroupCopyWith(ItemGroup value, $Res Function(ItemGroup) then) =
      _$ItemGroupCopyWithImpl<$Res>;
  $Res call({UniqueId uid, ShortTitle title});
}

class _$ItemGroupCopyWithImpl<$Res> implements $ItemGroupCopyWith<$Res> {
  _$ItemGroupCopyWithImpl(this._value, this._then);

  final ItemGroup _value;
  // ignore: unused_field
  final $Res Function(ItemGroup) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
    ));
  }
}

abstract class _$ItemGroupCopyWith<$Res> implements $ItemGroupCopyWith<$Res> {
  factory _$ItemGroupCopyWith(
          _ItemGroup value, $Res Function(_ItemGroup) then) =
      __$ItemGroupCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uid, ShortTitle title});
}

class __$ItemGroupCopyWithImpl<$Res> extends _$ItemGroupCopyWithImpl<$Res>
    implements _$ItemGroupCopyWith<$Res> {
  __$ItemGroupCopyWithImpl(_ItemGroup _value, $Res Function(_ItemGroup) _then)
      : super(_value, (v) => _then(v as _ItemGroup));

  @override
  _ItemGroup get _value => super._value as _ItemGroup;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
  }) {
    return _then(_ItemGroup(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
    ));
  }
}

class _$_ItemGroup extends _ItemGroup {
  const _$_ItemGroup({@required this.uid, @required this.title})
      : assert(uid != null),
        assert(title != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final ShortTitle title;

  @override
  String toString() {
    return 'ItemGroup(uid: $uid, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemGroup &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$ItemGroupCopyWith<_ItemGroup> get copyWith =>
      __$ItemGroupCopyWithImpl<_ItemGroup>(this, _$identity);
}

abstract class _ItemGroup extends ItemGroup {
  const _ItemGroup._() : super._();
  const factory _ItemGroup(
      {@required UniqueId uid, @required ShortTitle title}) = _$_ItemGroup;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  _$ItemGroupCopyWith<_ItemGroup> get copyWith;
}
