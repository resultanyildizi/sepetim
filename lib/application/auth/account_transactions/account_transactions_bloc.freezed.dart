// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountTransactionsEventTearOff {
  const _$AccountTransactionsEventTearOff();

  _ResetState stateReset() {
    return const _ResetState();
  }

  _AccountDeleted accountDeleted() {
    return const _AccountDeleted();
  }

  _CurrentPasswordVerified currentPasswordVerified(String password) {
    return _CurrentPasswordVerified(
      password,
    );
  }

  _ChangePassword passwordChanged(String password) {
    return _ChangePassword(
      password,
    );
  }

  _PasswordUpdated passwordUpdated() {
    return const _PasswordUpdated();
  }
}

// ignore: unused_element
const $AccountTransactionsEvent = _$AccountTransactionsEventTearOff();

mixin _$AccountTransactionsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stateReset(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
    @required Result passwordChanged(String password),
    @required Result passwordUpdated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stateReset(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    Result passwordChanged(String password),
    Result passwordUpdated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stateReset(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result passwordChanged(_ChangePassword value),
    @required Result passwordUpdated(_PasswordUpdated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stateReset(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    Result passwordChanged(_ChangePassword value),
    Result passwordUpdated(_PasswordUpdated value),
    @required Result orElse(),
  });
}

abstract class $AccountTransactionsEventCopyWith<$Res> {
  factory $AccountTransactionsEventCopyWith(AccountTransactionsEvent value,
          $Res Function(AccountTransactionsEvent) then) =
      _$AccountTransactionsEventCopyWithImpl<$Res>;
}

class _$AccountTransactionsEventCopyWithImpl<$Res>
    implements $AccountTransactionsEventCopyWith<$Res> {
  _$AccountTransactionsEventCopyWithImpl(this._value, this._then);

  final AccountTransactionsEvent _value;
  // ignore: unused_field
  final $Res Function(AccountTransactionsEvent) _then;
}

abstract class _$ResetStateCopyWith<$Res> {
  factory _$ResetStateCopyWith(
          _ResetState value, $Res Function(_ResetState) then) =
      __$ResetStateCopyWithImpl<$Res>;
}

class __$ResetStateCopyWithImpl<$Res>
    extends _$AccountTransactionsEventCopyWithImpl<$Res>
    implements _$ResetStateCopyWith<$Res> {
  __$ResetStateCopyWithImpl(
      _ResetState _value, $Res Function(_ResetState) _then)
      : super(_value, (v) => _then(v as _ResetState));

  @override
  _ResetState get _value => super._value as _ResetState;
}

class _$_ResetState implements _ResetState {
  const _$_ResetState();

  @override
  String toString() {
    return 'AccountTransactionsEvent.stateReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stateReset(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
    @required Result passwordChanged(String password),
    @required Result passwordUpdated(),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return stateReset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stateReset(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    Result passwordChanged(String password),
    Result passwordUpdated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateReset != null) {
      return stateReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stateReset(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result passwordChanged(_ChangePassword value),
    @required Result passwordUpdated(_PasswordUpdated value),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return stateReset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stateReset(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    Result passwordChanged(_ChangePassword value),
    Result passwordUpdated(_PasswordUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateReset != null) {
      return stateReset(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements AccountTransactionsEvent {
  const factory _ResetState() = _$_ResetState;
}

abstract class _$AccountDeletedCopyWith<$Res> {
  factory _$AccountDeletedCopyWith(
          _AccountDeleted value, $Res Function(_AccountDeleted) then) =
      __$AccountDeletedCopyWithImpl<$Res>;
}

class __$AccountDeletedCopyWithImpl<$Res>
    extends _$AccountTransactionsEventCopyWithImpl<$Res>
    implements _$AccountDeletedCopyWith<$Res> {
  __$AccountDeletedCopyWithImpl(
      _AccountDeleted _value, $Res Function(_AccountDeleted) _then)
      : super(_value, (v) => _then(v as _AccountDeleted));

  @override
  _AccountDeleted get _value => super._value as _AccountDeleted;
}

class _$_AccountDeleted implements _AccountDeleted {
  const _$_AccountDeleted();

  @override
  String toString() {
    return 'AccountTransactionsEvent.accountDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AccountDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stateReset(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
    @required Result passwordChanged(String password),
    @required Result passwordUpdated(),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return accountDeleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stateReset(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    Result passwordChanged(String password),
    Result passwordUpdated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountDeleted != null) {
      return accountDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stateReset(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result passwordChanged(_ChangePassword value),
    @required Result passwordUpdated(_PasswordUpdated value),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return accountDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stateReset(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    Result passwordChanged(_ChangePassword value),
    Result passwordUpdated(_PasswordUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountDeleted != null) {
      return accountDeleted(this);
    }
    return orElse();
  }
}

abstract class _AccountDeleted implements AccountTransactionsEvent {
  const factory _AccountDeleted() = _$_AccountDeleted;
}

abstract class _$CurrentPasswordVerifiedCopyWith<$Res> {
  factory _$CurrentPasswordVerifiedCopyWith(_CurrentPasswordVerified value,
          $Res Function(_CurrentPasswordVerified) then) =
      __$CurrentPasswordVerifiedCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$CurrentPasswordVerifiedCopyWithImpl<$Res>
    extends _$AccountTransactionsEventCopyWithImpl<$Res>
    implements _$CurrentPasswordVerifiedCopyWith<$Res> {
  __$CurrentPasswordVerifiedCopyWithImpl(_CurrentPasswordVerified _value,
      $Res Function(_CurrentPasswordVerified) _then)
      : super(_value, (v) => _then(v as _CurrentPasswordVerified));

  @override
  _CurrentPasswordVerified get _value =>
      super._value as _CurrentPasswordVerified;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_CurrentPasswordVerified(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_CurrentPasswordVerified implements _CurrentPasswordVerified {
  const _$_CurrentPasswordVerified(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'AccountTransactionsEvent.currentPasswordVerified(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentPasswordVerified &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$CurrentPasswordVerifiedCopyWith<_CurrentPasswordVerified> get copyWith =>
      __$CurrentPasswordVerifiedCopyWithImpl<_CurrentPasswordVerified>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stateReset(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
    @required Result passwordChanged(String password),
    @required Result passwordUpdated(),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return currentPasswordVerified(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stateReset(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    Result passwordChanged(String password),
    Result passwordUpdated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentPasswordVerified != null) {
      return currentPasswordVerified(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stateReset(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result passwordChanged(_ChangePassword value),
    @required Result passwordUpdated(_PasswordUpdated value),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return currentPasswordVerified(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stateReset(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    Result passwordChanged(_ChangePassword value),
    Result passwordUpdated(_PasswordUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentPasswordVerified != null) {
      return currentPasswordVerified(this);
    }
    return orElse();
  }
}

abstract class _CurrentPasswordVerified implements AccountTransactionsEvent {
  const factory _CurrentPasswordVerified(String password) =
      _$_CurrentPasswordVerified;

  String get password;
  _$CurrentPasswordVerifiedCopyWith<_CurrentPasswordVerified> get copyWith;
}

abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$ChangePasswordCopyWithImpl<$Res>
    extends _$AccountTransactionsEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangePassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'AccountTransactionsEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stateReset(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
    @required Result passwordChanged(String password),
    @required Result passwordUpdated(),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stateReset(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    Result passwordChanged(String password),
    Result passwordUpdated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stateReset(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result passwordChanged(_ChangePassword value),
    @required Result passwordUpdated(_PasswordUpdated value),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stateReset(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    Result passwordChanged(_ChangePassword value),
    Result passwordUpdated(_PasswordUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements AccountTransactionsEvent {
  const factory _ChangePassword(String password) = _$_ChangePassword;

  String get password;
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith;
}

abstract class _$PasswordUpdatedCopyWith<$Res> {
  factory _$PasswordUpdatedCopyWith(
          _PasswordUpdated value, $Res Function(_PasswordUpdated) then) =
      __$PasswordUpdatedCopyWithImpl<$Res>;
}

class __$PasswordUpdatedCopyWithImpl<$Res>
    extends _$AccountTransactionsEventCopyWithImpl<$Res>
    implements _$PasswordUpdatedCopyWith<$Res> {
  __$PasswordUpdatedCopyWithImpl(
      _PasswordUpdated _value, $Res Function(_PasswordUpdated) _then)
      : super(_value, (v) => _then(v as _PasswordUpdated));

  @override
  _PasswordUpdated get _value => super._value as _PasswordUpdated;
}

class _$_PasswordUpdated implements _PasswordUpdated {
  const _$_PasswordUpdated();

  @override
  String toString() {
    return 'AccountTransactionsEvent.passwordUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PasswordUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stateReset(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
    @required Result passwordChanged(String password),
    @required Result passwordUpdated(),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return passwordUpdated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stateReset(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    Result passwordChanged(String password),
    Result passwordUpdated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordUpdated != null) {
      return passwordUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stateReset(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result passwordChanged(_ChangePassword value),
    @required Result passwordUpdated(_PasswordUpdated value),
  }) {
    assert(stateReset != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    assert(passwordChanged != null);
    assert(passwordUpdated != null);
    return passwordUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stateReset(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    Result passwordChanged(_ChangePassword value),
    Result passwordUpdated(_PasswordUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordUpdated != null) {
      return passwordUpdated(this);
    }
    return orElse();
  }
}

abstract class _PasswordUpdated implements AccountTransactionsEvent {
  const factory _PasswordUpdated() = _$_PasswordUpdated;
}

class _$AccountTransactionsStateTearOff {
  const _$AccountTransactionsStateTearOff();

  _AccountTransactionsState call(
      {@required Password password,
      @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      @required bool isProgressing,
      @required bool showErrorMessages,
      @required bool isPasswordVerified,
      @required bool isPasswordUpdated,
      @required bool isAccountDeleted}) {
    return _AccountTransactionsState(
      password: password,
      authFailureOrUnitOption: authFailureOrUnitOption,
      isProgressing: isProgressing,
      showErrorMessages: showErrorMessages,
      isPasswordVerified: isPasswordVerified,
      isPasswordUpdated: isPasswordUpdated,
      isAccountDeleted: isAccountDeleted,
    );
  }
}

// ignore: unused_element
const $AccountTransactionsState = _$AccountTransactionsStateTearOff();

mixin _$AccountTransactionsState {
  Password get password;
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  bool get isProgressing;
  bool get showErrorMessages;
  bool get isPasswordVerified;
  bool get isPasswordUpdated;
  bool get isAccountDeleted;

  $AccountTransactionsStateCopyWith<AccountTransactionsState> get copyWith;
}

abstract class $AccountTransactionsStateCopyWith<$Res> {
  factory $AccountTransactionsStateCopyWith(AccountTransactionsState value,
          $Res Function(AccountTransactionsState) then) =
      _$AccountTransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      bool isProgressing,
      bool showErrorMessages,
      bool isPasswordVerified,
      bool isPasswordUpdated,
      bool isAccountDeleted});
}

class _$AccountTransactionsStateCopyWithImpl<$Res>
    implements $AccountTransactionsStateCopyWith<$Res> {
  _$AccountTransactionsStateCopyWithImpl(this._value, this._then);

  final AccountTransactionsState _value;
  // ignore: unused_field
  final $Res Function(AccountTransactionsState) _then;

  @override
  $Res call({
    Object password = freezed,
    Object authFailureOrUnitOption = freezed,
    Object isProgressing = freezed,
    Object showErrorMessages = freezed,
    Object isPasswordVerified = freezed,
    Object isPasswordUpdated = freezed,
    Object isAccountDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed ? _value.password : password as Password,
      authFailureOrUnitOption: authFailureOrUnitOption == freezed
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption as Option<Either<AuthFailure, Unit>>,
      isProgressing: isProgressing == freezed
          ? _value.isProgressing
          : isProgressing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isPasswordVerified: isPasswordVerified == freezed
          ? _value.isPasswordVerified
          : isPasswordVerified as bool,
      isPasswordUpdated: isPasswordUpdated == freezed
          ? _value.isPasswordUpdated
          : isPasswordUpdated as bool,
      isAccountDeleted: isAccountDeleted == freezed
          ? _value.isAccountDeleted
          : isAccountDeleted as bool,
    ));
  }
}

abstract class _$AccountTransactionsStateCopyWith<$Res>
    implements $AccountTransactionsStateCopyWith<$Res> {
  factory _$AccountTransactionsStateCopyWith(_AccountTransactionsState value,
          $Res Function(_AccountTransactionsState) then) =
      __$AccountTransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      bool isProgressing,
      bool showErrorMessages,
      bool isPasswordVerified,
      bool isPasswordUpdated,
      bool isAccountDeleted});
}

class __$AccountTransactionsStateCopyWithImpl<$Res>
    extends _$AccountTransactionsStateCopyWithImpl<$Res>
    implements _$AccountTransactionsStateCopyWith<$Res> {
  __$AccountTransactionsStateCopyWithImpl(_AccountTransactionsState _value,
      $Res Function(_AccountTransactionsState) _then)
      : super(_value, (v) => _then(v as _AccountTransactionsState));

  @override
  _AccountTransactionsState get _value =>
      super._value as _AccountTransactionsState;

  @override
  $Res call({
    Object password = freezed,
    Object authFailureOrUnitOption = freezed,
    Object isProgressing = freezed,
    Object showErrorMessages = freezed,
    Object isPasswordVerified = freezed,
    Object isPasswordUpdated = freezed,
    Object isAccountDeleted = freezed,
  }) {
    return _then(_AccountTransactionsState(
      password: password == freezed ? _value.password : password as Password,
      authFailureOrUnitOption: authFailureOrUnitOption == freezed
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption as Option<Either<AuthFailure, Unit>>,
      isProgressing: isProgressing == freezed
          ? _value.isProgressing
          : isProgressing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isPasswordVerified: isPasswordVerified == freezed
          ? _value.isPasswordVerified
          : isPasswordVerified as bool,
      isPasswordUpdated: isPasswordUpdated == freezed
          ? _value.isPasswordUpdated
          : isPasswordUpdated as bool,
      isAccountDeleted: isAccountDeleted == freezed
          ? _value.isAccountDeleted
          : isAccountDeleted as bool,
    ));
  }
}

class _$_AccountTransactionsState implements _AccountTransactionsState {
  const _$_AccountTransactionsState(
      {@required this.password,
      @required this.authFailureOrUnitOption,
      @required this.isProgressing,
      @required this.showErrorMessages,
      @required this.isPasswordVerified,
      @required this.isPasswordUpdated,
      @required this.isAccountDeleted})
      : assert(password != null),
        assert(authFailureOrUnitOption != null),
        assert(isProgressing != null),
        assert(showErrorMessages != null),
        assert(isPasswordVerified != null),
        assert(isPasswordUpdated != null),
        assert(isAccountDeleted != null);

  @override
  final Password password;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrUnitOption;
  @override
  final bool isProgressing;
  @override
  final bool showErrorMessages;
  @override
  final bool isPasswordVerified;
  @override
  final bool isPasswordUpdated;
  @override
  final bool isAccountDeleted;

  @override
  String toString() {
    return 'AccountTransactionsState(password: $password, authFailureOrUnitOption: $authFailureOrUnitOption, isProgressing: $isProgressing, showErrorMessages: $showErrorMessages, isPasswordVerified: $isPasswordVerified, isPasswordUpdated: $isPasswordUpdated, isAccountDeleted: $isAccountDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountTransactionsState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(
                    other.authFailureOrUnitOption, authFailureOrUnitOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrUnitOption, authFailureOrUnitOption)) &&
            (identical(other.isProgressing, isProgressing) ||
                const DeepCollectionEquality()
                    .equals(other.isProgressing, isProgressing)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isPasswordVerified, isPasswordVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordVerified, isPasswordVerified)) &&
            (identical(other.isPasswordUpdated, isPasswordUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordUpdated, isPasswordUpdated)) &&
            (identical(other.isAccountDeleted, isAccountDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isAccountDeleted, isAccountDeleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(authFailureOrUnitOption) ^
      const DeepCollectionEquality().hash(isProgressing) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isPasswordVerified) ^
      const DeepCollectionEquality().hash(isPasswordUpdated) ^
      const DeepCollectionEquality().hash(isAccountDeleted);

  @override
  _$AccountTransactionsStateCopyWith<_AccountTransactionsState> get copyWith =>
      __$AccountTransactionsStateCopyWithImpl<_AccountTransactionsState>(
          this, _$identity);
}

abstract class _AccountTransactionsState implements AccountTransactionsState {
  const factory _AccountTransactionsState(
      {@required Password password,
      @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      @required bool isProgressing,
      @required bool showErrorMessages,
      @required bool isPasswordVerified,
      @required bool isPasswordUpdated,
      @required bool isAccountDeleted}) = _$_AccountTransactionsState;

  @override
  Password get password;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  @override
  bool get isProgressing;
  @override
  bool get showErrorMessages;
  @override
  bool get isPasswordVerified;
  @override
  bool get isPasswordUpdated;
  @override
  bool get isAccountDeleted;
  @override
  _$AccountTransactionsStateCopyWith<_AccountTransactionsState> get copyWith;
}
