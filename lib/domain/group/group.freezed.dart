// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call({@required UniqueId uid, @required ShortTitle title}) {
    return _Group(
      uid: uid,
      title: title,
    );
  }
}

// ignore: unused_element
const $Group = _$GroupTearOff();

mixin _$Group {
  UniqueId get uid;
  ShortTitle get title;

  $GroupCopyWith<Group> get copyWith;
}

abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call({UniqueId uid, ShortTitle title});
}

class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

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

abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uid, ShortTitle title});
}

class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
  }) {
    return _then(_Group(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
    ));
  }
}

class _$_Group extends _Group {
  const _$_Group({@required this.uid, @required this.title})
      : assert(uid != null),
        assert(title != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final ShortTitle title;

  @override
  String toString() {
    return 'Group(uid: $uid, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
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
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);
}

abstract class _Group extends Group {
  const _Group._() : super._();
  const factory _Group({@required UniqueId uid, @required ShortTitle title}) =
      _$_Group;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  _$GroupCopyWith<_Group> get copyWith;
}
