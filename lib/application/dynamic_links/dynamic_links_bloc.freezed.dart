// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dynamic_links_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DynamicLinksEventTearOff {
  const _$DynamicLinksEventTearOff();

// ignore: unused_element
  _DynamicLinkCreated dynamicLinkCreated({@required String linkDescription}) {
    return _DynamicLinkCreated(
      linkDescription: linkDescription,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DynamicLinksEvent = _$DynamicLinksEventTearOff();

/// @nodoc
mixin _$DynamicLinksEvent {
  String get linkDescription;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dynamicLinkCreated(String linkDescription),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dynamicLinkCreated(String linkDescription),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dynamicLinkCreated(_DynamicLinkCreated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dynamicLinkCreated(_DynamicLinkCreated value),
    @required Result orElse(),
  });

  $DynamicLinksEventCopyWith<DynamicLinksEvent> get copyWith;
}

/// @nodoc
abstract class $DynamicLinksEventCopyWith<$Res> {
  factory $DynamicLinksEventCopyWith(
          DynamicLinksEvent value, $Res Function(DynamicLinksEvent) then) =
      _$DynamicLinksEventCopyWithImpl<$Res>;
  $Res call({String linkDescription});
}

/// @nodoc
class _$DynamicLinksEventCopyWithImpl<$Res>
    implements $DynamicLinksEventCopyWith<$Res> {
  _$DynamicLinksEventCopyWithImpl(this._value, this._then);

  final DynamicLinksEvent _value;
  // ignore: unused_field
  final $Res Function(DynamicLinksEvent) _then;

  @override
  $Res call({
    Object linkDescription = freezed,
  }) {
    return _then(_value.copyWith(
      linkDescription: linkDescription == freezed
          ? _value.linkDescription
          : linkDescription as String,
    ));
  }
}

/// @nodoc
abstract class _$DynamicLinkCreatedCopyWith<$Res>
    implements $DynamicLinksEventCopyWith<$Res> {
  factory _$DynamicLinkCreatedCopyWith(
          _DynamicLinkCreated value, $Res Function(_DynamicLinkCreated) then) =
      __$DynamicLinkCreatedCopyWithImpl<$Res>;
  @override
  $Res call({String linkDescription});
}

/// @nodoc
class __$DynamicLinkCreatedCopyWithImpl<$Res>
    extends _$DynamicLinksEventCopyWithImpl<$Res>
    implements _$DynamicLinkCreatedCopyWith<$Res> {
  __$DynamicLinkCreatedCopyWithImpl(
      _DynamicLinkCreated _value, $Res Function(_DynamicLinkCreated) _then)
      : super(_value, (v) => _then(v as _DynamicLinkCreated));

  @override
  _DynamicLinkCreated get _value => super._value as _DynamicLinkCreated;

  @override
  $Res call({
    Object linkDescription = freezed,
  }) {
    return _then(_DynamicLinkCreated(
      linkDescription: linkDescription == freezed
          ? _value.linkDescription
          : linkDescription as String,
    ));
  }
}

/// @nodoc
class _$_DynamicLinkCreated implements _DynamicLinkCreated {
  const _$_DynamicLinkCreated({@required this.linkDescription})
      : assert(linkDescription != null);

  @override
  final String linkDescription;

  @override
  String toString() {
    return 'DynamicLinksEvent.dynamicLinkCreated(linkDescription: $linkDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DynamicLinkCreated &&
            (identical(other.linkDescription, linkDescription) ||
                const DeepCollectionEquality()
                    .equals(other.linkDescription, linkDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(linkDescription);

  @override
  _$DynamicLinkCreatedCopyWith<_DynamicLinkCreated> get copyWith =>
      __$DynamicLinkCreatedCopyWithImpl<_DynamicLinkCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dynamicLinkCreated(String linkDescription),
  }) {
    assert(dynamicLinkCreated != null);
    return dynamicLinkCreated(linkDescription);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dynamicLinkCreated(String linkDescription),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dynamicLinkCreated != null) {
      return dynamicLinkCreated(linkDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dynamicLinkCreated(_DynamicLinkCreated value),
  }) {
    assert(dynamicLinkCreated != null);
    return dynamicLinkCreated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dynamicLinkCreated(_DynamicLinkCreated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dynamicLinkCreated != null) {
      return dynamicLinkCreated(this);
    }
    return orElse();
  }
}

abstract class _DynamicLinkCreated implements DynamicLinksEvent {
  const factory _DynamicLinkCreated({@required String linkDescription}) =
      _$_DynamicLinkCreated;

  @override
  String get linkDescription;
  @override
  _$DynamicLinkCreatedCopyWith<_DynamicLinkCreated> get copyWith;
}

/// @nodoc
class _$DynamicLinksStateTearOff {
  const _$DynamicLinksStateTearOff();

// ignore: unused_element
  _DynamicLinksState call({@required String dynamicLinkUrl}) {
    return _DynamicLinksState(
      dynamicLinkUrl: dynamicLinkUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DynamicLinksState = _$DynamicLinksStateTearOff();

/// @nodoc
mixin _$DynamicLinksState {
  String get dynamicLinkUrl;

  $DynamicLinksStateCopyWith<DynamicLinksState> get copyWith;
}

/// @nodoc
abstract class $DynamicLinksStateCopyWith<$Res> {
  factory $DynamicLinksStateCopyWith(
          DynamicLinksState value, $Res Function(DynamicLinksState) then) =
      _$DynamicLinksStateCopyWithImpl<$Res>;
  $Res call({String dynamicLinkUrl});
}

/// @nodoc
class _$DynamicLinksStateCopyWithImpl<$Res>
    implements $DynamicLinksStateCopyWith<$Res> {
  _$DynamicLinksStateCopyWithImpl(this._value, this._then);

  final DynamicLinksState _value;
  // ignore: unused_field
  final $Res Function(DynamicLinksState) _then;

  @override
  $Res call({
    Object dynamicLinkUrl = freezed,
  }) {
    return _then(_value.copyWith(
      dynamicLinkUrl: dynamicLinkUrl == freezed
          ? _value.dynamicLinkUrl
          : dynamicLinkUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$DynamicLinksStateCopyWith<$Res>
    implements $DynamicLinksStateCopyWith<$Res> {
  factory _$DynamicLinksStateCopyWith(
          _DynamicLinksState value, $Res Function(_DynamicLinksState) then) =
      __$DynamicLinksStateCopyWithImpl<$Res>;
  @override
  $Res call({String dynamicLinkUrl});
}

/// @nodoc
class __$DynamicLinksStateCopyWithImpl<$Res>
    extends _$DynamicLinksStateCopyWithImpl<$Res>
    implements _$DynamicLinksStateCopyWith<$Res> {
  __$DynamicLinksStateCopyWithImpl(
      _DynamicLinksState _value, $Res Function(_DynamicLinksState) _then)
      : super(_value, (v) => _then(v as _DynamicLinksState));

  @override
  _DynamicLinksState get _value => super._value as _DynamicLinksState;

  @override
  $Res call({
    Object dynamicLinkUrl = freezed,
  }) {
    return _then(_DynamicLinksState(
      dynamicLinkUrl: dynamicLinkUrl == freezed
          ? _value.dynamicLinkUrl
          : dynamicLinkUrl as String,
    ));
  }
}

/// @nodoc
class _$_DynamicLinksState implements _DynamicLinksState {
  const _$_DynamicLinksState({@required this.dynamicLinkUrl})
      : assert(dynamicLinkUrl != null);

  @override
  final String dynamicLinkUrl;

  @override
  String toString() {
    return 'DynamicLinksState(dynamicLinkUrl: $dynamicLinkUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DynamicLinksState &&
            (identical(other.dynamicLinkUrl, dynamicLinkUrl) ||
                const DeepCollectionEquality()
                    .equals(other.dynamicLinkUrl, dynamicLinkUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dynamicLinkUrl);

  @override
  _$DynamicLinksStateCopyWith<_DynamicLinksState> get copyWith =>
      __$DynamicLinksStateCopyWithImpl<_DynamicLinksState>(this, _$identity);
}

abstract class _DynamicLinksState implements DynamicLinksState {
  const factory _DynamicLinksState({@required String dynamicLinkUrl}) =
      _$_DynamicLinksState;

  @override
  String get dynamicLinkUrl;
  @override
  _$DynamicLinksStateCopyWith<_DynamicLinksState> get copyWith;
}
