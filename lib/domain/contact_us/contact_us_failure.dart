import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_failure.freezed.dart';

@freezed
abstract class ContactUsFailure with _$ContactUsFailure {
  const factory ContactUsFailure.networkException() = _NetworkException;
  const factory ContactUsFailure.unexpectedServerError() =
      _UnexpectedServerError;
}
