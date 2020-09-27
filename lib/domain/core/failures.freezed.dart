// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  WeakPassword<T> weakPassword<T>({@required T failedValue}) {
    return WeakPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  MultiLine<T> multiLine<T>({@required T failedValue}) {
    return MultiLine<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidImagePath<T> invalidImagePath<T>({@required T failedValue}) {
    return InvalidImagePath<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidUrl<T> invalidUrl<T>({@required T failedValue}) {
    return InvalidUrl<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPrice<T> invalidPrice<T>({@required T failedValue}) {
    return InvalidPrice<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidNumberSign<T> invalidNumberSign<T>({@required T failedValue}) {
    return InvalidNumberSign<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $WeakPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $WeakPasswordCopyWith(
          WeakPassword<T> value, $Res Function(WeakPassword<T>) then) =
      _$WeakPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$WeakPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $WeakPasswordCopyWith<T, $Res> {
  _$WeakPasswordCopyWithImpl(
      WeakPassword<T> _value, $Res Function(WeakPassword<T>) _then)
      : super(_value, (v) => _then(v as WeakPassword<T>));

  @override
  WeakPassword<T> get _value => super._value as WeakPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(WeakPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$WeakPassword<T>
    with DiagnosticableTreeMixin
    implements WeakPassword<T> {
  const _$WeakPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.weakPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.weakPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeakPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $WeakPasswordCopyWith<T, WeakPassword<T>> get copyWith =>
      _$WeakPasswordCopyWithImpl<T, WeakPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return weakPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weakPassword != null) {
      return weakPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPassword<T> implements ValueFailure<T> {
  const factory WeakPassword({@required T failedValue}) = _$WeakPassword<T>;

  @override
  T get failedValue;
  @override
  $WeakPasswordCopyWith<T, WeakPassword<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $MultiLineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultiLineCopyWith(
          MultiLine<T> value, $Res Function(MultiLine<T>) then) =
      _$MultiLineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultiLineCopyWith<T, $Res> {
  _$MultiLineCopyWithImpl(
      MultiLine<T> _value, $Res Function(MultiLine<T>) _then)
      : super(_value, (v) => _then(v as MultiLine<T>));

  @override
  MultiLine<T> get _value => super._value as MultiLine<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(MultiLine<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$MultiLine<T> with DiagnosticableTreeMixin implements MultiLine<T> {
  const _$MultiLine({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiLine'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultiLine<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      _$MultiLineCopyWithImpl<T, MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class MultiLine<T> implements ValueFailure<T> {
  const factory MultiLine({@required T failedValue}) = _$MultiLine<T>;

  @override
  T get failedValue;
  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidImagePathCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidImagePathCopyWith(
          InvalidImagePath<T> value, $Res Function(InvalidImagePath<T>) then) =
      _$InvalidImagePathCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidImagePathCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidImagePathCopyWith<T, $Res> {
  _$InvalidImagePathCopyWithImpl(
      InvalidImagePath<T> _value, $Res Function(InvalidImagePath<T>) _then)
      : super(_value, (v) => _then(v as InvalidImagePath<T>));

  @override
  InvalidImagePath<T> get _value => super._value as InvalidImagePath<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidImagePath<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidImagePath<T>
    with DiagnosticableTreeMixin
    implements InvalidImagePath<T> {
  const _$InvalidImagePath({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidImagePath(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidImagePath'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidImagePath<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidImagePathCopyWith<T, InvalidImagePath<T>> get copyWith =>
      _$InvalidImagePathCopyWithImpl<T, InvalidImagePath<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidImagePath(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImagePath != null) {
      return invalidImagePath(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidImagePath(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImagePath != null) {
      return invalidImagePath(this);
    }
    return orElse();
  }
}

abstract class InvalidImagePath<T> implements ValueFailure<T> {
  const factory InvalidImagePath({@required T failedValue}) =
      _$InvalidImagePath<T>;

  @override
  T get failedValue;
  @override
  $InvalidImagePathCopyWith<T, InvalidImagePath<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> with DiagnosticableTreeMixin implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.listTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUrlCopyWith(
          InvalidUrl<T> value, $Res Function(InvalidUrl<T>) then) =
      _$InvalidUrlCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUrlCopyWith<T, $Res> {
  _$InvalidUrlCopyWithImpl(
      InvalidUrl<T> _value, $Res Function(InvalidUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidUrl<T>));

  @override
  InvalidUrl<T> get _value => super._value as InvalidUrl<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUrl<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidUrl<T> with DiagnosticableTreeMixin implements InvalidUrl<T> {
  const _$InvalidUrl({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidUrl(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidUrl'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUrl<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith =>
      _$InvalidUrlCopyWithImpl<T, InvalidUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUrl != null) {
      return invalidUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidUrl<T> implements ValueFailure<T> {
  const factory InvalidUrl({@required T failedValue}) = _$InvalidUrl<T>;

  @override
  T get failedValue;
  @override
  $InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPriceCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPriceCopyWith(
          InvalidPrice<T> value, $Res Function(InvalidPrice<T>) then) =
      _$InvalidPriceCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPriceCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPriceCopyWith<T, $Res> {
  _$InvalidPriceCopyWithImpl(
      InvalidPrice<T> _value, $Res Function(InvalidPrice<T>) _then)
      : super(_value, (v) => _then(v as InvalidPrice<T>));

  @override
  InvalidPrice<T> get _value => super._value as InvalidPrice<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPrice<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPrice<T>
    with DiagnosticableTreeMixin
    implements InvalidPrice<T> {
  const _$InvalidPrice({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPrice(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPrice'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPrice<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPriceCopyWith<T, InvalidPrice<T>> get copyWith =>
      _$InvalidPriceCopyWithImpl<T, InvalidPrice<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidPrice(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPrice != null) {
      return invalidPrice(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidPrice(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPrice != null) {
      return invalidPrice(this);
    }
    return orElse();
  }
}

abstract class InvalidPrice<T> implements ValueFailure<T> {
  const factory InvalidPrice({@required T failedValue}) = _$InvalidPrice<T>;

  @override
  T get failedValue;
  @override
  $InvalidPriceCopyWith<T, InvalidPrice<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidNumberSignCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidNumberSignCopyWith(InvalidNumberSign<T> value,
          $Res Function(InvalidNumberSign<T>) then) =
      _$InvalidNumberSignCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidNumberSignCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidNumberSignCopyWith<T, $Res> {
  _$InvalidNumberSignCopyWithImpl(
      InvalidNumberSign<T> _value, $Res Function(InvalidNumberSign<T>) _then)
      : super(_value, (v) => _then(v as InvalidNumberSign<T>));

  @override
  InvalidNumberSign<T> get _value => super._value as InvalidNumberSign<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidNumberSign<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidNumberSign<T>
    with DiagnosticableTreeMixin
    implements InvalidNumberSign<T> {
  const _$InvalidNumberSign({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidNumberSign(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidNumberSign'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidNumberSign<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidNumberSignCopyWith<T, InvalidNumberSign<T>> get copyWith =>
      _$InvalidNumberSignCopyWithImpl<T, InvalidNumberSign<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result weakPassword(T failedValue),
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiLine(T failedValue),
    @required Result invalidImagePath(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result invalidNumberSign(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidNumberSign(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result weakPassword(T failedValue),
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiLine(T failedValue),
    Result invalidImagePath(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result invalidNumberSign(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidNumberSign != null) {
      return invalidNumberSign(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result weakPassword(WeakPassword<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiLine(MultiLine<T> value),
    @required Result invalidImagePath(InvalidImagePath<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidUrl(InvalidUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result invalidNumberSign(InvalidNumberSign<T> value),
  }) {
    assert(invalidEmail != null);
    assert(weakPassword != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(invalidImagePath != null);
    assert(listTooLong != null);
    assert(invalidUrl != null);
    assert(invalidPrice != null);
    assert(invalidNumberSign != null);
    return invalidNumberSign(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result weakPassword(WeakPassword<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiLine(MultiLine<T> value),
    Result invalidImagePath(InvalidImagePath<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidUrl(InvalidUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result invalidNumberSign(InvalidNumberSign<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidNumberSign != null) {
      return invalidNumberSign(this);
    }
    return orElse();
  }
}

abstract class InvalidNumberSign<T> implements ValueFailure<T> {
  const factory InvalidNumberSign({@required T failedValue}) =
      _$InvalidNumberSign<T>;

  @override
  T get failedValue;
  @override
  $InvalidNumberSignCopyWith<T, InvalidNumberSign<T>> get copyWith;
}
