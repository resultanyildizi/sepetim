// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'link_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LinkObjectTearOff {
  const _$LinkObjectTearOff();

  _LinkObject call(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required Link link}) {
    return _LinkObject(
      uid: uid,
      title: title,
      link: link,
    );
  }
}

// ignore: unused_element
const $LinkObject = _$LinkObjectTearOff();

mixin _$LinkObject {
  UniqueId get uid;
  ShortTitle get title;
  Link get link;

  $LinkObjectCopyWith<LinkObject> get copyWith;
}

abstract class $LinkObjectCopyWith<$Res> {
  factory $LinkObjectCopyWith(
          LinkObject value, $Res Function(LinkObject) then) =
      _$LinkObjectCopyWithImpl<$Res>;
  $Res call({UniqueId uid, ShortTitle title, Link link});
}

class _$LinkObjectCopyWithImpl<$Res> implements $LinkObjectCopyWith<$Res> {
  _$LinkObjectCopyWithImpl(this._value, this._then);

  final LinkObject _value;
  // ignore: unused_field
  final $Res Function(LinkObject) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object link = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      link: link == freezed ? _value.link : link as Link,
    ));
  }
}

abstract class _$LinkObjectCopyWith<$Res> implements $LinkObjectCopyWith<$Res> {
  factory _$LinkObjectCopyWith(
          _LinkObject value, $Res Function(_LinkObject) then) =
      __$LinkObjectCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uid, ShortTitle title, Link link});
}

class __$LinkObjectCopyWithImpl<$Res> extends _$LinkObjectCopyWithImpl<$Res>
    implements _$LinkObjectCopyWith<$Res> {
  __$LinkObjectCopyWithImpl(
      _LinkObject _value, $Res Function(_LinkObject) _then)
      : super(_value, (v) => _then(v as _LinkObject));

  @override
  _LinkObject get _value => super._value as _LinkObject;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object link = freezed,
  }) {
    return _then(_LinkObject(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      link: link == freezed ? _value.link : link as Link,
    ));
  }
}

class _$_LinkObject extends _LinkObject {
  const _$_LinkObject(
      {@required this.uid, @required this.title, @required this.link})
      : assert(uid != null),
        assert(title != null),
        assert(link != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final ShortTitle title;
  @override
  final Link link;

  @override
  String toString() {
    return 'LinkObject(uid: $uid, title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkObject &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(link);

  @override
  _$LinkObjectCopyWith<_LinkObject> get copyWith =>
      __$LinkObjectCopyWithImpl<_LinkObject>(this, _$identity);
}

abstract class _LinkObject extends LinkObject {
  const _LinkObject._() : super._();
  const factory _LinkObject(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required Link link}) = _$_LinkObject;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  Link get link;
  @override
  _$LinkObjectCopyWith<_LinkObject> get copyWith;
}
