part of 'contact_us_bloc.dart';

@freezed
abstract class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    @required EmailMessage message,
    @required bool isSending,
    @required bool showErrorMessages,
    @required
        Option<Either<ContactUsFailure, Unit>> contactUsFailureOrUnitOption,
  }) = _ContactUsState;

  factory ContactUsState.initial() => ContactUsState(
        message: EmailMessage(''),
        isSending: false,
        showErrorMessages: false,
        contactUsFailureOrUnitOption: none(),
      );
}
