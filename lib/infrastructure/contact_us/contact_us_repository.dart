import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/contact_us/contact_us_failure.dart';
import 'package:Sepetim/domain/contact_us/i_contact_us_repository.dart';
import 'package:Sepetim/domain/contact_us/value_objects.dart';
import 'package:Sepetim/infrastructure/core/cloud_function_caller.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IContactUsRepository)
class ContactUsRepository extends IContactUsRepository {
  final FirebaseAuth _firebaseAuth;
  ContactUsRepository(this._firebaseAuth);
  @override
  Future<Either<ContactUsFailure, Unit>> sendEmail(
      {EmailMessage message}) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ContactUsFailure.networkException());
      }

      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ContactUsFailure.unexpectedServerError());
      }

      final userId = user.uid;
      final userEmail = user.email;

      if (userEmail == null) {
        return left(const ContactUsFailure.unexpectedServerError());
      }

      await callCloudFunction(
        functionName: "sendMail",
        data: <String, String>{
          "userId": userId,
          "userEmail": userEmail,
          "message": message.getOrCrash(),
          "isReport": "false",
        },
      );

      return right(unit);
    } on PlatformException catch (_) {
      return left(const ContactUsFailure.unexpectedServerError());
    }
  }

  @override
  Future<Either<ContactUsFailure, Unit>> sendReportEmail({
    Option<UniqueId> categoryId,
    Option<UniqueId> groupId,
    Option<UniqueId> itemId,
    String details,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ContactUsFailure.networkException());
      }

      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ContactUsFailure.unexpectedServerError());
      }

      final userId = user.uid;
      final userEmail = user.email;

      if (userEmail == null) {
        return left(const ContactUsFailure.unexpectedServerError());
      }

      final hasCategoryId = categoryId.isSome();
      final hasGroupId = groupId.isSome();
      final hasItemId = itemId.isSome();

      const firestoreUrl =
          "https://console.firebase.google.com/u/0/project/sepetim-e2723/firestore/data/";

      String reportMessage = "";

      if (hasCategoryId) {
        final categoryIdString = categoryId.getOrElse(() => null)?.getOrCrash();
        final path = "users/$userId/categories/$categoryIdString";

        reportMessage =
            "There is a problem with one of my categories. The path of problematic category is:<br> <a style='color: aqua;' href='$firestoreUrl$path' target='_blank'>$path</a><br>";

        if (hasGroupId) {
          final groupIdString = groupId.getOrElse(() => null)?.getOrCrash();
          final path =
              "users/$userId/categories/$categoryIdString/groups/$groupIdString";

          reportMessage =
              "There is a problem with one of my groups. The path of problematic group is:<br> <a style='color: aqua;' href='$firestoreUrl$path' target='_blank'>$path</a><br>";

          if (hasItemId) {
            final itemIdString = itemId.getOrElse(() => null)?.getOrCrash();
            final path =
                "users/$userId/categories/$categoryIdString/groups/$groupIdString/items/$itemIdString";

            reportMessage =
                "There is a problem with one of my items. The path of problematic item is:<br> <a style= 'color: aqua;' href='$firestoreUrl$path' target='_blank'>$path</a><br>";
          }
        }
      }

      reportMessage += details != null
          ? "And here is the details of the problem: $details"
          : "";

      await callCloudFunction(
        functionName: "sendMail",
        data: <String, String>{
          "userId": userId,
          "userEmail": userEmail,
          "message": reportMessage,
          "isReport": "true",
        },
      );

      return right(unit);
    } on PlatformException catch (_) {
      return left(const ContactUsFailure.unexpectedServerError());
    }
  }
}
