part of 'contact_us_bloc.dart';

@freezed
abstract class ContactUsEvent with _$ContactUsEvent {
  const factory ContactUsEvent.emailMessageChanged(String emailMessage) =
      _EmailMessageChanged;
  const factory ContactUsEvent.emailSent() = _EmailSent;
}
