import 'package:Sepetim/domain/auth/sign_in_type.dart';
import 'package:Sepetim/domain/auth/user.dart';
import 'package:Sepetim/domain/auth/value_objects.dart';
import 'package:Sepetim/domain/core/errors.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDoaminX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      signInType: _getSignInType(),
      emailOption: optionOf(email == "" ? null : email),
    );
  }

  SignInType _getSignInType() {
    if (isAnonymous) {
      return const SignInType.signedInAnonymously();
    }

    final _userProvider = providerData.elementAt(1).providerId;
    switch (_userProvider) {
      case EmailAuthProvider.providerId:
        return const SignInType.signedInWithEmailAndPassword();
      case GoogleAuthProvider.providerId:
        return const SignInType.signedInWithGoogle();
      default:
        throw UnknownSignInType();
    }
  }
}
