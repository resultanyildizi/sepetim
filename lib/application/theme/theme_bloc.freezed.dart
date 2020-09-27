// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

// ignore: unused_element
  _ThemeRead themeRead() {
    return const _ThemeRead();
  }

// ignore: unused_element
  _ThemeChanged themeChanged({@required AppTheme theme}) {
    return _ThemeChanged(
      theme: theme,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result themeRead(),
    @required Result themeChanged(AppTheme theme),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result themeRead(),
    Result themeChanged(AppTheme theme),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result themeRead(_ThemeRead value),
    @required Result themeChanged(_ThemeChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result themeRead(_ThemeRead value),
    Result themeChanged(_ThemeChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class _$ThemeReadCopyWith<$Res> {
  factory _$ThemeReadCopyWith(
          _ThemeRead value, $Res Function(_ThemeRead) then) =
      __$ThemeReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$ThemeReadCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$ThemeReadCopyWith<$Res> {
  __$ThemeReadCopyWithImpl(_ThemeRead _value, $Res Function(_ThemeRead) _then)
      : super(_value, (v) => _then(v as _ThemeRead));

  @override
  _ThemeRead get _value => super._value as _ThemeRead;
}

/// @nodoc
class _$_ThemeRead implements _ThemeRead {
  const _$_ThemeRead();

  @override
  String toString() {
    return 'ThemeEvent.themeRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ThemeRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result themeRead(),
    @required Result themeChanged(AppTheme theme),
  }) {
    assert(themeRead != null);
    assert(themeChanged != null);
    return themeRead();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result themeRead(),
    Result themeChanged(AppTheme theme),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeRead != null) {
      return themeRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result themeRead(_ThemeRead value),
    @required Result themeChanged(_ThemeChanged value),
  }) {
    assert(themeRead != null);
    assert(themeChanged != null);
    return themeRead(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result themeRead(_ThemeRead value),
    Result themeChanged(_ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeRead != null) {
      return themeRead(this);
    }
    return orElse();
  }
}

abstract class _ThemeRead implements ThemeEvent {
  const factory _ThemeRead() = _$_ThemeRead;
}

/// @nodoc
abstract class _$ThemeChangedCopyWith<$Res> {
  factory _$ThemeChangedCopyWith(
          _ThemeChanged value, $Res Function(_ThemeChanged) then) =
      __$ThemeChangedCopyWithImpl<$Res>;
  $Res call({AppTheme theme});
}

/// @nodoc
class __$ThemeChangedCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$ThemeChangedCopyWith<$Res> {
  __$ThemeChangedCopyWithImpl(
      _ThemeChanged _value, $Res Function(_ThemeChanged) _then)
      : super(_value, (v) => _then(v as _ThemeChanged));

  @override
  _ThemeChanged get _value => super._value as _ThemeChanged;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_ThemeChanged(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

/// @nodoc
class _$_ThemeChanged implements _ThemeChanged {
  const _$_ThemeChanged({@required this.theme}) : assert(theme != null);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'ThemeEvent.themeChanged(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeChanged &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @override
  _$ThemeChangedCopyWith<_ThemeChanged> get copyWith =>
      __$ThemeChangedCopyWithImpl<_ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result themeRead(),
    @required Result themeChanged(AppTheme theme),
  }) {
    assert(themeRead != null);
    assert(themeChanged != null);
    return themeChanged(theme);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result themeRead(),
    Result themeChanged(AppTheme theme),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeChanged != null) {
      return themeChanged(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result themeRead(_ThemeRead value),
    @required Result themeChanged(_ThemeChanged value),
  }) {
    assert(themeRead != null);
    assert(themeChanged != null);
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result themeRead(_ThemeRead value),
    Result themeChanged(_ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeChanged implements ThemeEvent {
  const factory _ThemeChanged({@required AppTheme theme}) = _$_ThemeChanged;

  AppTheme get theme;
  _$ThemeChangedCopyWith<_ThemeChanged> get copyWith;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

// ignore: unused_element
  _ThemeState call({@required AppTheme theme}) {
    return _ThemeState(
      theme: theme,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  AppTheme get theme;

  $ThemeStateCopyWith<ThemeState> get copyWith;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({AppTheme theme});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme theme});
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_ThemeState(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

/// @nodoc
class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({@required this.theme}) : assert(theme != null);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'ThemeState(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeState &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({@required AppTheme theme}) = _$_ThemeState;

  @override
  AppTheme get theme;
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith;
}
