// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reset_password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResetPasswordFormStateTearOff {
  const _$ResetPasswordFormStateTearOff();

// ignore: unused_element
  _ResetPasswordFormState call(
      {@required EmailAddress emailAddress,
      @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      @required bool showErrorMessages,
      @required bool isSending,
      @required bool isSent,
      @required bool isSuccessful}) {
    return _ResetPasswordFormState(
      emailAddress: emailAddress,
      authFailureOrUnitOption: authFailureOrUnitOption,
      showErrorMessages: showErrorMessages,
      isSending: isSending,
      isSent: isSent,
      isSuccessful: isSuccessful,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPasswordFormState = _$ResetPasswordFormStateTearOff();

/// @nodoc
mixin _$ResetPasswordFormState {
  EmailAddress get emailAddress;
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  bool get showErrorMessages;
  bool get isSending;
  bool get isSent;
  bool get isSuccessful;

  $ResetPasswordFormStateCopyWith<ResetPasswordFormState> get copyWith;
}

/// @nodoc
abstract class $ResetPasswordFormStateCopyWith<$Res> {
  factory $ResetPasswordFormStateCopyWith(ResetPasswordFormState value,
          $Res Function(ResetPasswordFormState) then) =
      _$ResetPasswordFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      bool showErrorMessages,
      bool isSending,
      bool isSent,
      bool isSuccessful});
}

/// @nodoc
class _$ResetPasswordFormStateCopyWithImpl<$Res>
    implements $ResetPasswordFormStateCopyWith<$Res> {
  _$ResetPasswordFormStateCopyWithImpl(this._value, this._then);

  final ResetPasswordFormState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object authFailureOrUnitOption = freezed,
    Object showErrorMessages = freezed,
    Object isSending = freezed,
    Object isSent = freezed,
    Object isSuccessful = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      authFailureOrUnitOption: authFailureOrUnitOption == freezed
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSending: isSending == freezed ? _value.isSending : isSending as bool,
      isSent: isSent == freezed ? _value.isSent : isSent as bool,
      isSuccessful:
          isSuccessful == freezed ? _value.isSuccessful : isSuccessful as bool,
    ));
  }
}

/// @nodoc
abstract class _$ResetPasswordFormStateCopyWith<$Res>
    implements $ResetPasswordFormStateCopyWith<$Res> {
  factory _$ResetPasswordFormStateCopyWith(_ResetPasswordFormState value,
          $Res Function(_ResetPasswordFormState) then) =
      __$ResetPasswordFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      bool showErrorMessages,
      bool isSending,
      bool isSent,
      bool isSuccessful});
}

/// @nodoc
class __$ResetPasswordFormStateCopyWithImpl<$Res>
    extends _$ResetPasswordFormStateCopyWithImpl<$Res>
    implements _$ResetPasswordFormStateCopyWith<$Res> {
  __$ResetPasswordFormStateCopyWithImpl(_ResetPasswordFormState _value,
      $Res Function(_ResetPasswordFormState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordFormState));

  @override
  _ResetPasswordFormState get _value => super._value as _ResetPasswordFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object authFailureOrUnitOption = freezed,
    Object showErrorMessages = freezed,
    Object isSending = freezed,
    Object isSent = freezed,
    Object isSuccessful = freezed,
  }) {
    return _then(_ResetPasswordFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      authFailureOrUnitOption: authFailureOrUnitOption == freezed
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSending: isSending == freezed ? _value.isSending : isSending as bool,
      isSent: isSent == freezed ? _value.isSent : isSent as bool,
      isSuccessful:
          isSuccessful == freezed ? _value.isSuccessful : isSuccessful as bool,
    ));
  }
}

/// @nodoc
class _$_ResetPasswordFormState implements _ResetPasswordFormState {
  const _$_ResetPasswordFormState(
      {@required this.emailAddress,
      @required this.authFailureOrUnitOption,
      @required this.showErrorMessages,
      @required this.isSending,
      @required this.isSent,
      @required this.isSuccessful})
      : assert(emailAddress != null),
        assert(authFailureOrUnitOption != null),
        assert(showErrorMessages != null),
        assert(isSending != null),
        assert(isSent != null),
        assert(isSuccessful != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrUnitOption;
  @override
  final bool showErrorMessages;
  @override
  final bool isSending;
  @override
  final bool isSent;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'ResetPasswordFormState(emailAddress: $emailAddress, authFailureOrUnitOption: $authFailureOrUnitOption, showErrorMessages: $showErrorMessages, isSending: $isSending, isSent: $isSent, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(
                    other.authFailureOrUnitOption, authFailureOrUnitOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrUnitOption, authFailureOrUnitOption)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSending, isSending) ||
                const DeepCollectionEquality()
                    .equals(other.isSending, isSending)) &&
            (identical(other.isSent, isSent) ||
                const DeepCollectionEquality().equals(other.isSent, isSent)) &&
            (identical(other.isSuccessful, isSuccessful) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccessful, isSuccessful)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(authFailureOrUnitOption) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSending) ^
      const DeepCollectionEquality().hash(isSent) ^
      const DeepCollectionEquality().hash(isSuccessful);

  @override
  _$ResetPasswordFormStateCopyWith<_ResetPasswordFormState> get copyWith =>
      __$ResetPasswordFormStateCopyWithImpl<_ResetPasswordFormState>(
          this, _$identity);
}

abstract class _ResetPasswordFormState implements ResetPasswordFormState {
  const factory _ResetPasswordFormState(
      {@required EmailAddress emailAddress,
      @required Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
      @required bool showErrorMessages,
      @required bool isSending,
      @required bool isSent,
      @required bool isSuccessful}) = _$_ResetPasswordFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  @override
  bool get showErrorMessages;
  @override
  bool get isSending;
  @override
  bool get isSent;
  @override
  bool get isSuccessful;
  @override
  _$ResetPasswordFormStateCopyWith<_ResetPasswordFormState> get copyWith;
}

/// @nodoc
class _$ResetPasswordFormEventTearOff {
  const _$ResetPasswordFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged({String emailAddress}) {
    return EmailChanged(
      emailAddress: emailAddress,
    );
  }

// ignore: unused_element
  ResetLinkSent resetLinkSent({String languageCode}) {
    return ResetLinkSent(
      languageCode: languageCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPasswordFormEvent = _$ResetPasswordFormEventTearOff();

/// @nodoc
mixin _$ResetPasswordFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailAddress),
    @required Result resetLinkSent(String languageCode),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailAddress),
    Result resetLinkSent(String languageCode),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result resetLinkSent(ResetLinkSent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result resetLinkSent(ResetLinkSent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordFormEventCopyWith<$Res> {
  factory $ResetPasswordFormEventCopyWith(ResetPasswordFormEvent value,
          $Res Function(ResetPasswordFormEvent) then) =
      _$ResetPasswordFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordFormEventCopyWithImpl<$Res>
    implements $ResetPasswordFormEventCopyWith<$Res> {
  _$ResetPasswordFormEventCopyWithImpl(this._value, this._then);

  final ResetPasswordFormEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(EmailChanged(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({this.emailAddress});

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'ResetPasswordFormEvent.emailChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailAddress),
    @required Result resetLinkSent(String languageCode),
  }) {
    assert(emailChanged != null);
    assert(resetLinkSent != null);
    return emailChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailAddress),
    Result resetLinkSent(String languageCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result resetLinkSent(ResetLinkSent value),
  }) {
    assert(emailChanged != null);
    assert(resetLinkSent != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result resetLinkSent(ResetLinkSent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ResetPasswordFormEvent {
  const factory EmailChanged({String emailAddress}) = _$EmailChanged;

  String get emailAddress;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $ResetLinkSentCopyWith<$Res> {
  factory $ResetLinkSentCopyWith(
          ResetLinkSent value, $Res Function(ResetLinkSent) then) =
      _$ResetLinkSentCopyWithImpl<$Res>;
  $Res call({String languageCode});
}

/// @nodoc
class _$ResetLinkSentCopyWithImpl<$Res>
    extends _$ResetPasswordFormEventCopyWithImpl<$Res>
    implements $ResetLinkSentCopyWith<$Res> {
  _$ResetLinkSentCopyWithImpl(
      ResetLinkSent _value, $Res Function(ResetLinkSent) _then)
      : super(_value, (v) => _then(v as ResetLinkSent));

  @override
  ResetLinkSent get _value => super._value as ResetLinkSent;

  @override
  $Res call({
    Object languageCode = freezed,
  }) {
    return _then(ResetLinkSent(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
    ));
  }
}

/// @nodoc
class _$ResetLinkSent implements ResetLinkSent {
  const _$ResetLinkSent({this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'ResetPasswordFormEvent.resetLinkSent(languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetLinkSent &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(languageCode);

  @override
  $ResetLinkSentCopyWith<ResetLinkSent> get copyWith =>
      _$ResetLinkSentCopyWithImpl<ResetLinkSent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailAddress),
    @required Result resetLinkSent(String languageCode),
  }) {
    assert(emailChanged != null);
    assert(resetLinkSent != null);
    return resetLinkSent(languageCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailAddress),
    Result resetLinkSent(String languageCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetLinkSent != null) {
      return resetLinkSent(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result resetLinkSent(ResetLinkSent value),
  }) {
    assert(emailChanged != null);
    assert(resetLinkSent != null);
    return resetLinkSent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result resetLinkSent(ResetLinkSent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetLinkSent != null) {
      return resetLinkSent(this);
    }
    return orElse();
  }
}

abstract class ResetLinkSent implements ResetPasswordFormEvent {
  const factory ResetLinkSent({String languageCode}) = _$ResetLinkSent;

  String get languageCode;
  $ResetLinkSentCopyWith<ResetLinkSent> get copyWith;
}
