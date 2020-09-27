import 'dart:async';

import 'package:Sepetim/domain/auth/domain_user.dart';
import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:Sepetim/domain/auth/sign_in_type.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;

  AuthBloc(this._iAuthFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        await Future.delayed(const Duration(milliseconds: 500));
        final userOption = await _iAuthFacade.getSignedUser();
        yield userOption.fold(
          () {
            return const AuthState.unauthenticated();
          },
          (user) {
            return AuthState.authenticated(
              user: user,
              signInType: user.signInType,
            );
          },
        );
      },
      signedOut: (e) async* {
        await _iAuthFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
