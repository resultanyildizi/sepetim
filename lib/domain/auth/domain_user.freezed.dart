// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'domain_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DomainUserTearOff {
  const _$DomainUserTearOff();

// ignore: unused_element
  _DomainUser call(
      {@required UniqueId id,
      @required SignInType signInType,
      @required Option<String> emailOption}) {
    return _DomainUser(
      id: id,
      signInType: signInType,
      emailOption: emailOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DomainUser = _$DomainUserTearOff();

/// @nodoc
mixin _$DomainUser {
  UniqueId get id;
  SignInType get signInType;
  Option<String> get emailOption;

  $DomainUserCopyWith<DomainUser> get copyWith;
}

/// @nodoc
abstract class $DomainUserCopyWith<$Res> {
  factory $DomainUserCopyWith(
          DomainUser value, $Res Function(DomainUser) then) =
      _$DomainUserCopyWithImpl<$Res>;
  $Res call({UniqueId id, SignInType signInType, Option<String> emailOption});

  $SignInTypeCopyWith<$Res> get signInType;
}

/// @nodoc
class _$DomainUserCopyWithImpl<$Res> implements $DomainUserCopyWith<$Res> {
  _$DomainUserCopyWithImpl(this._value, this._then);

  final DomainUser _value;
  // ignore: unused_field
  final $Res Function(DomainUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object signInType = freezed,
    Object emailOption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      signInType:
          signInType == freezed ? _value.signInType : signInType as SignInType,
      emailOption: emailOption == freezed
          ? _value.emailOption
          : emailOption as Option<String>,
    ));
  }

  @override
  $SignInTypeCopyWith<$Res> get signInType {
    if (_value.signInType == null) {
      return null;
    }
    return $SignInTypeCopyWith<$Res>(_value.signInType, (value) {
      return _then(_value.copyWith(signInType: value));
    });
  }
}

/// @nodoc
abstract class _$DomainUserCopyWith<$Res> implements $DomainUserCopyWith<$Res> {
  factory _$DomainUserCopyWith(
          _DomainUser value, $Res Function(_DomainUser) then) =
      __$DomainUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, SignInType signInType, Option<String> emailOption});

  @override
  $SignInTypeCopyWith<$Res> get signInType;
}

/// @nodoc
class __$DomainUserCopyWithImpl<$Res> extends _$DomainUserCopyWithImpl<$Res>
    implements _$DomainUserCopyWith<$Res> {
  __$DomainUserCopyWithImpl(
      _DomainUser _value, $Res Function(_DomainUser) _then)
      : super(_value, (v) => _then(v as _DomainUser));

  @override
  _DomainUser get _value => super._value as _DomainUser;

  @override
  $Res call({
    Object id = freezed,
    Object signInType = freezed,
    Object emailOption = freezed,
  }) {
    return _then(_DomainUser(
      id: id == freezed ? _value.id : id as UniqueId,
      signInType:
          signInType == freezed ? _value.signInType : signInType as SignInType,
      emailOption: emailOption == freezed
          ? _value.emailOption
          : emailOption as Option<String>,
    ));
  }
}

/// @nodoc
class _$_DomainUser implements _DomainUser {
  const _$_DomainUser(
      {@required this.id,
      @required this.signInType,
      @required this.emailOption})
      : assert(id != null),
        assert(signInType != null),
        assert(emailOption != null);

  @override
  final UniqueId id;
  @override
  final SignInType signInType;
  @override
  final Option<String> emailOption;

  @override
  String toString() {
    return 'DomainUser(id: $id, signInType: $signInType, emailOption: $emailOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DomainUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.signInType, signInType) ||
                const DeepCollectionEquality()
                    .equals(other.signInType, signInType)) &&
            (identical(other.emailOption, emailOption) ||
                const DeepCollectionEquality()
                    .equals(other.emailOption, emailOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(signInType) ^
      const DeepCollectionEquality().hash(emailOption);

  @override
  _$DomainUserCopyWith<_DomainUser> get copyWith =>
      __$DomainUserCopyWithImpl<_DomainUser>(this, _$identity);
}

abstract class _DomainUser implements DomainUser {
  const factory _DomainUser(
      {@required UniqueId id,
      @required SignInType signInType,
      @required Option<String> emailOption}) = _$_DomainUser;

  @override
  UniqueId get id;
  @override
  SignInType get signInType;
  @override
  Option<String> get emailOption;
  @override
  _$DomainUserCopyWith<_DomainUser> get copyWith;
}
