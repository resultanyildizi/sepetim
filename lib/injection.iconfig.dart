// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:Sepetim/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:Sepetim/infrastructure/auth/firebase_auth_facade.dart';
import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.fireBaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerFactory<PasswordVisibilityBloc>(() => PasswordVisibilityBloc());
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
