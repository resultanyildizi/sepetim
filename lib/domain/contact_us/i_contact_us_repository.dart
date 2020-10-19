import 'package:Sepetim/domain/contact_us/contact_us_failure.dart';
import 'package:Sepetim/domain/contact_us/value_objects.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class IContactUsRepository {
  Future<Either<ContactUsFailure, Unit>> sendEmail(
      {@required EmailMessage message});

  Future<Either<ContactUsFailure, Unit>> sendReportEmail({
    @required Option<UniqueId> categoryId,
    @required Option<UniqueId> groupId,
    @required Option<UniqueId> itemId,
    String details,
  });
}
