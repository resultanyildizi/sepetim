import 'package:Sepetim/domain/auth/user.dart';
import 'package:Sepetim/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInAnonymously();

  Future<void> signOut();
}
