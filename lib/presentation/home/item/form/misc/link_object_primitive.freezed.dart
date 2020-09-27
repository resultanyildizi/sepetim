// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'link_object_primitive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LinkObjectPrimitiveTearOff {
  const _$LinkObjectPrimitiveTearOff();

// ignore: unused_element
  _LinkObjectPrimitive call(
      {@required UniqueId uid, @required String title, @required String link}) {
    return _LinkObjectPrimitive(
      uid: uid,
      title: title,
      link: link,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LinkObjectPrimitive = _$LinkObjectPrimitiveTearOff();

/// @nodoc
mixin _$LinkObjectPrimitive {
  UniqueId get uid;
  String get title;
  String get link;

  $LinkObjectPrimitiveCopyWith<LinkObjectPrimitive> get copyWith;
}

/// @nodoc
abstract class $LinkObjectPrimitiveCopyWith<$Res> {
  factory $LinkObjectPrimitiveCopyWith(
          LinkObjectPrimitive value, $Res Function(LinkObjectPrimitive) then) =
      _$LinkObjectPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId uid, String title, String link});
}

/// @nodoc
class _$LinkObjectPrimitiveCopyWithImpl<$Res>
    implements $LinkObjectPrimitiveCopyWith<$Res> {
  _$LinkObjectPrimitiveCopyWithImpl(this._value, this._then);

  final LinkObjectPrimitive _value;
  // ignore: unused_field
  final $Res Function(LinkObjectPrimitive) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object link = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as String,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

/// @nodoc
abstract class _$LinkObjectPrimitiveCopyWith<$Res>
    implements $LinkObjectPrimitiveCopyWith<$Res> {
  factory _$LinkObjectPrimitiveCopyWith(_LinkObjectPrimitive value,
          $Res Function(_LinkObjectPrimitive) then) =
      __$LinkObjectPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId uid, String title, String link});
}

/// @nodoc
class __$LinkObjectPrimitiveCopyWithImpl<$Res>
    extends _$LinkObjectPrimitiveCopyWithImpl<$Res>
    implements _$LinkObjectPrimitiveCopyWith<$Res> {
  __$LinkObjectPrimitiveCopyWithImpl(
      _LinkObjectPrimitive _value, $Res Function(_LinkObjectPrimitive) _then)
      : super(_value, (v) => _then(v as _LinkObjectPrimitive));

  @override
  _LinkObjectPrimitive get _value => super._value as _LinkObjectPrimitive;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object link = freezed,
  }) {
    return _then(_LinkObjectPrimitive(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as String,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

/// @nodoc
class _$_LinkObjectPrimitive extends _LinkObjectPrimitive {
  const _$_LinkObjectPrimitive(
      {@required this.uid, @required this.title, @required this.link})
      : assert(uid != null),
        assert(title != null),
        assert(link != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final String title;
  @override
  final String link;

  @override
  String toString() {
    return 'LinkObjectPrimitive(uid: $uid, title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkObjectPrimitive &&
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
  _$LinkObjectPrimitiveCopyWith<_LinkObjectPrimitive> get copyWith =>
      __$LinkObjectPrimitiveCopyWithImpl<_LinkObjectPrimitive>(
          this, _$identity);
}

abstract class _LinkObjectPrimitive extends LinkObjectPrimitive {
  const _LinkObjectPrimitive._() : super._();
  const factory _LinkObjectPrimitive(
      {@required UniqueId uid,
      @required String title,
      @required String link}) = _$_LinkObjectPrimitive;

  @override
  UniqueId get uid;
  @override
  String get title;
  @override
  String get link;
  @override
  _$LinkObjectPrimitiveCopyWith<_LinkObjectPrimitive> get copyWith;
}
