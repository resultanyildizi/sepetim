import 'package:Sepetim/domain/auth/domain_user.dart';
import 'package:Sepetim/domain/auth/sign_in_type.dart';
import 'package:Sepetim/domain/core/errors.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDoaminX on User {
  DomainUser toDomain() {
    return DomainUser(
      id: UniqueId.fromUniqueString(uid),
      signInType: _getSignInType(),
      emailOption: optionOf(email == "" ? null : email),
    );
  }

  SignInType _getSignInType() {
    if (isAnonymous) {
      return const SignInType.signedInAnonymously();
    }

    final _userProvider = providerData.elementAt(0).providerId;
    if (_userProvider == EmailAuthProvider.PROVIDER_ID) {
      return const SignInType.signedInWithEmailAndPassword();
    } else if (_userProvider == GoogleAuthProvider.PROVIDER_ID) {
      return const SignInType.signedInWithGoogle();
    } else {
      throw UnknownSignInType();
    }
  }
}
