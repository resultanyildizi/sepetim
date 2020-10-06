import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:Sepetim/domain/contact_us/contact_us_failure.dart';
import 'package:Sepetim/domain/contact_us/i_contact_us_repository.dart';
import 'package:Sepetim/domain/contact_us/value_objects.dart';

part 'contact_us_bloc.freezed.dart';
part 'contact_us_event.dart';
part 'contact_us_state.dart';

@injectable
class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  final IContactUsRepository _contactUsRepository;

  ContactUsBloc(
    this._contactUsRepository,
  ) : super(ContactUsState.initial());

  @override
  Stream<ContactUsState> mapEventToState(
    ContactUsEvent event,
  ) async* {
    yield* event.map(
      emailMessageChanged: (e) async* {
        yield state.copyWith(
          message: EmailMessage(e.emailMessage),
          contactUsFailureOrUnitOption: none(),
        );
      },
      emailSent: (e) async* {
        Either<ContactUsFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          contactUsFailureOrUnitOption: none(),
          isSending: true,
        );
        if (state.message.isValid) {
          failureOrSuccess =
              await _contactUsRepository.sendEmail(message: state.message);
        }

        yield state.copyWith(
          contactUsFailureOrUnitOption: optionOf(failureOrSuccess),
          isSending: false,
          showErrorMessages: true,
        );
      },
    );
  }
}
