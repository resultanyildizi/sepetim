import 'package:Sepetim/domain/auth/auth_failure.dart';
import 'package:Sepetim/domain/auth/domain_user.dart';
import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:Sepetim/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  // That class depend on FirebaseAuth and GoogleSignIn classes so we need to apply dependency injection
  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);
  @override
  Future<Option<DomainUser>> getSignedUser() async {
    final _firebaseUser = _firebaseAuth.currentUser;
    return optionOf(_firebaseUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult != ConnectivityResult.mobile &&
        connectivityResult != ConnectivityResult.wifi) {
      return left(const AuthFailure.networkException());
    }
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'emaıl-already-ın-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }

      await _firebaseAuth.signInAnonymously();
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final providerList =
          await _firebaseAuth.fetchSignInMethodsForEmail(googleUser.email);

      if (providerList != null &&
          providerList.isNotEmpty &&
          providerList[0] != 'google.com') {
        await _googleSignIn.signOut();
        return left(const AuthFailure.accountAlreadyExists());
      } else {
        final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken,
        );
        await _firebaseAuth.signInWithCredential(authCredential);
        return right(unit);
      }
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      if (e.code == 'ınvalıd-credentıal') {
        return left(const AuthFailure.invalidCredential());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> linkWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }

      final emailAddressString = emailAddress.getOrCrash();
      final passwordString = password.getOrCrash();

      final emailProviderCredential = EmailAuthProvider.credential(
        email: emailAddressString,
        password: passwordString,
      );

      final _firebaseUser = _firebaseAuth.currentUser;
      if (_firebaseUser.isAnonymous) {
        await _firebaseUser.linkWithCredential(emailProviderCredential);
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'emaıl-already-ın-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'credentıal-already-ın-use') {
        return left(const AuthFailure.accountAlreadyExists());
      } else if (e.code == 'provıder-already-lınked') {
        return left(const AuthFailure.accountAlreadyLinked());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> linkWithGoogleProvider() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }

      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final googleProviderCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      final _firebaseUser = _firebaseAuth.currentUser;
      if (_firebaseUser.isAnonymous) {
        await _firebaseUser.linkWithCredential(googleProviderCredential);
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      await _googleSignIn.signOut();
      if (e.code == 'emaıl-already-ın-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'credentıal-already-ın-use') {
        return left(const AuthFailure.accountAlreadyExists());
      } else if (e.code == 'provıder-already-lınked') {
        return left(const AuthFailure.accountAlreadyLinked());
      } else if (e.code == 'ınvalıd-credentıal') {
        return left(const AuthFailure.invalidCredential());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }
      final _firebaseUser = _firebaseAuth.currentUser;
      if (_firebaseUser != null) {
        await Future.wait([
          _firebaseUser.delete(),
          _googleSignIn.signOut(),
        ]);
      } else {
        return left(const AuthFailure.deleteAccountError());
      }

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.deleteAccountError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendResetPasswordLink({
    @required EmailAddress emailAddress,
    @required String languageCode,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }

      final providerList = await _firebaseAuth
          .fetchSignInMethodsForEmail(emailAddress.getOrCrash());

      if (providerList == null ||
          (providerList != null && providerList.isEmpty)) {
        return left(const AuthFailure.userNotFound());
      } else {
        if (providerList[0] != 'password') {
          return left(const AuthFailure.userNotUsingEmailProvider());
        }
      }
      await _firebaseAuth.setLanguageCode(languageCode);
      await _firebaseAuth.sendPasswordResetEmail(
        email: emailAddress.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        return left(const AuthFailure.userNotFound());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyUsersCurrentPassword({
    @required String password,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }
      final _firebaseUser = _firebaseAuth.currentUser;
      final credential = EmailAuthProvider.credential(
        email: _firebaseUser.email,
        password: password,
      );
      await _firebaseUser.reauthenticateWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return left(const AuthFailure.wrongPassword());
      } else if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({
    Password password,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const AuthFailure.networkException());
      }

      final _firebaseUser = _firebaseAuth.currentUser;
      final passwordString = password.getOrCrash();

      await _firebaseUser.updatePassword(passwordString);

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
}
