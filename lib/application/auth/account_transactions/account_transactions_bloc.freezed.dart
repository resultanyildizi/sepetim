// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountTransactionsEventTearOff {
  const _$AccountTransactionsEventTearOff();

  _ResetState resetState() {
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
}

// ignore: unused_element
const $AccountTransactionsEvent = _$AccountTransactionsEventTearOff();

mixin _$AccountTransactionsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
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
    return 'AccountTransactionsEvent.resetState()';
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
    @required Result resetState(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
  }) {
    assert(resetState != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    return resetState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
  }) {
    assert(resetState != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState(this);
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
    @required Result resetState(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
  }) {
    assert(resetState != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    return accountDeleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
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
    @required Result resetState(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
  }) {
    assert(resetState != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    return accountDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
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
    @required Result resetState(),
    @required Result accountDeleted(),
    @required Result currentPasswordVerified(String password),
  }) {
    assert(resetState != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    return currentPasswordVerified(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result accountDeleted(),
    Result currentPasswordVerified(String password),
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
    @required Result resetState(_ResetState value),
    @required Result accountDeleted(_AccountDeleted value),
    @required Result currentPasswordVerified(_CurrentPasswordVerified value),
  }) {
    assert(resetState != null);
    assert(accountDeleted != null);
    assert(currentPasswordVerified != null);
    return currentPasswordVerified(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(_ResetState value),
    Result accountDeleted(_AccountDeleted value),
    Result currentPasswordVerified(_CurrentPasswordVerified value),
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

class _$AccountTransactionsStateTearOff {
  const _$AccountTransactionsStateTearOff();

  _AccountTransactionsState call(
      {@required Password password,
      @required Password confirmPassword,
      @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      @required bool isProgressing,
      @required bool showErrorMessages}) {
    return _AccountTransactionsState(
      password: password,
      confirmPassword: confirmPassword,
      authFailureOrUnitOption: authFailureOrUnitOption,
      isProgressing: isProgressing,
      showErrorMessages: showErrorMessages,
    );
  }
}

// ignore: unused_element
const $AccountTransactionsState = _$AccountTransactionsStateTearOff();

mixin _$AccountTransactionsState {
  Password get password;
  Password get confirmPassword;
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  bool get isProgressing;
  bool get showErrorMessages;

  $AccountTransactionsStateCopyWith<AccountTransactionsState> get copyWith;
}

abstract class $AccountTransactionsStateCopyWith<$Res> {
  factory $AccountTransactionsStateCopyWith(AccountTransactionsState value,
          $Res Function(AccountTransactionsState) then) =
      _$AccountTransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Password confirmPassword,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      bool isProgressing,
      bool showErrorMessages});
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
    Object confirmPassword = freezed,
    Object authFailureOrUnitOption = freezed,
    Object isProgressing = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      authFailureOrUnitOption: authFailureOrUnitOption == freezed
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption as Option<Either<AuthFailure, Unit>>,
      isProgressing: isProgressing == freezed
          ? _value.isProgressing
          : isProgressing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
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
      Password confirmPassword,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      bool isProgressing,
      bool showErrorMessages});
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
    Object confirmPassword = freezed,
    Object authFailureOrUnitOption = freezed,
    Object isProgressing = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_AccountTransactionsState(
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      authFailureOrUnitOption: authFailureOrUnitOption == freezed
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption as Option<Either<AuthFailure, Unit>>,
      isProgressing: isProgressing == freezed
          ? _value.isProgressing
          : isProgressing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

class _$_AccountTransactionsState implements _AccountTransactionsState {
  const _$_AccountTransactionsState(
      {@required this.password,
      @required this.confirmPassword,
      @required this.authFailureOrUnitOption,
      @required this.isProgressing,
      @required this.showErrorMessages})
      : assert(password != null),
        assert(confirmPassword != null),
        assert(authFailureOrUnitOption != null),
        assert(isProgressing != null),
        assert(showErrorMessages != null);

  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrUnitOption;
  @override
  final bool isProgressing;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'AccountTransactionsState(password: $password, confirmPassword: $confirmPassword, authFailureOrUnitOption: $authFailureOrUnitOption, isProgressing: $isProgressing, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountTransactionsState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(
                    other.authFailureOrUnitOption, authFailureOrUnitOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrUnitOption, authFailureOrUnitOption)) &&
            (identical(other.isProgressing, isProgressing) ||
                const DeepCollectionEquality()
                    .equals(other.isProgressing, isProgressing)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(authFailureOrUnitOption) ^
      const DeepCollectionEquality().hash(isProgressing) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @override
  _$AccountTransactionsStateCopyWith<_AccountTransactionsState> get copyWith =>
      __$AccountTransactionsStateCopyWithImpl<_AccountTransactionsState>(
          this, _$identity);
}

abstract class _AccountTransactionsState implements AccountTransactionsState {
  const factory _AccountTransactionsState(
      {@required Password password,
      @required Password confirmPassword,
      @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      @required bool isProgressing,
      @required bool showErrorMessages}) = _$_AccountTransactionsState;

  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  @override
  bool get isProgressing;
  @override
  bool get showErrorMessages;
  @override
  _$AccountTransactionsStateCopyWith<_AccountTransactionsState> get copyWith;
}
