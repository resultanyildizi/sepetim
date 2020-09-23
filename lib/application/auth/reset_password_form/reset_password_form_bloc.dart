import 'dart:async';

import 'package:Sepetim/domain/auth/auth_failure.dart';
import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:Sepetim/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_form_state.dart';
part 'reset_password_form_event.dart';
part 'reset_password_form_bloc.freezed.dart';

@injectable
class ResetPasswordFormBloc
    extends Bloc<ResetPasswordFormEvent, ResetPasswordFormState> {
  final IAuthFacade _authFacade;
  ResetPasswordFormBloc(this._authFacade);
  @override
  ResetPasswordFormState get initialState => ResetPasswordFormState.initial();

  @override
  Stream<ResetPasswordFormState> mapEventToState(
    ResetPasswordFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailAddress),
          authFailureOrUnitOption: none(),
        );
      },
      resetLinkSent: (e) async* {
        Either<AuthFailure, Unit> failureOrUnit;
        yield state.copyWith(
          isSending: true,
          authFailureOrUnitOption: none(),
        );
        if (state.emailAddress.isValid) {
          failureOrUnit = await _authFacade.sendResetPasswordLink(
              emailAddress: state.emailAddress, languageCode: e.languageCode);
        }

        yield state.copyWith(
          isSending: false,
          isSent: true,
          authFailureOrUnitOption: optionOf(failureOrUnit),
          showErrorMessages: true,
          isSuccessful: failureOrUnit != null && failureOrUnit.isRight(),
        );
      },
    );
  }
}
