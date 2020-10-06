import 'package:http/http.dart';
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
        },
      );

      return right(unit);
    } on PlatformException catch (_) {
      return left(const ContactUsFailure.unexpectedServerError());
    }
  }
}
