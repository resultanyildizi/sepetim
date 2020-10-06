import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/account/widgets/action_popups.dart';
import 'package:Sepetim/presentation/account/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountTransactionsBloc>(
          create: (context) => getIt<AccountTransactionsBloc>(),
        ),
      ],
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) =>
                ExtendedNavigator.of(context).replace(Routes.signInPage),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            authenticated: (state) {
              return BlocListener<AccountTransactionsBloc,
                  AccountTransactionsState>(
                listener: (context, state) {
                  state.authFailureOrUnitOption.fold(
                    () {},
                    (either) {
                      either.fold(
                        (failure) {
                          failure.maybeMap(
                            serverError: (_) {
                              ExtendedNavigator.of(context).popUntil((route) =>
                                  route.settings.name ==
                                  Routes.applicationContentPage);
                              return serverErrorPopup(context);
                            },
                            deleteAccountError: (_) {
                              ExtendedNavigator.of(context).popUntil((route) =>
                                  route.settings.name ==
                                  Routes.applicationContentPage);
                              return deleteAccountErrorPopup(context);
                            },
                            networkException: (_) {
                              ExtendedNavigator.of(context).popUntil((route) =>
                                  route.settings.name ==
                                  Routes.applicationContentPage);
                              return networkExceptionPopup(context);
                            },
                            tooManyRequests: (_) {
                              ExtendedNavigator.of(context).popUntil((route) =>
                                  route.settings.name ==
                                  Routes.applicationContentPage);
                              return tooManyRequestsPopup(context);
                            },
                            orElse: () {},
                          );
                        },
                        (_) {
                          if (state.isAccountDeleted) {
                            context
                                .bloc<AuthBloc>()
                                .add(const AuthEvent.authCheckRequested());
                          }
                          if (state.isPasswordVerified) {
                            ExtendedNavigator.of(context).popUntil((route) =>
                                route.settings.name ==
                                Routes.applicationContentPage);
                            changePasswordPopup(context,
                                context.bloc<AccountTransactionsBloc>());
                          }
                          if (state.isPasswordUpdated) {
                            ExtendedNavigator.of(context).popUntil((route) =>
                                route.settings.name ==
                                Routes.applicationContentPage);
                            successfulPopup(context);
                          }
                        },
                      );
                    },
                  );
                },
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                      'Sepetim',
                      style: Theme.of(context).appBarTheme.textTheme.headline1,
                    ),
                  ),
                  body: DefaultPadding(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          state.signInType.map(
                            signedInWithGoogle: (_) => SizedBox(
                              width: 25.0,
                              child:
                                  Image.asset('assets/images/google_icon.png'),
                            ),
                            signedInWithEmailAndPassword: (_) => const Icon(
                              Icons.email,
                              color: Colors.pinkAccent,
                            ),
                            signedInAnonymously: (_) => const Icon(
                              Icons.person,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          state.user.emailOption.fold(
                            () => Text(
                              translate(context, 'not_signed_in'),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            (email) => Text(
                              email,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        translate(context, 'account'),
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      state.signInType.map(
                        signedInWithGoogle: (_) => Column(
                          children: [
                            signOutButton(context),
                            const SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                        signedInWithEmailAndPassword: (_) => Column(
                          children: [
                            signOutButton(context),
                            const SizedBox(
                              height: 15.0,
                            ),
                            changePasswordButton(context),
                            const SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                        signedInAnonymously: (_) => Column(
                          children: [
                            registerButton(context),
                            const SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                      deleteAccountButton(context),
                    ],
                  )),
                ),
              );
            },
            // TODO: "Implement"
            orElse: () => Scaffold(
              appBar: AppBar(
                title: Text(
                  'Sepetim',
                  style: robotoTextStyle(bold: true),
                ),
              ),
              body: const DefaultPadding(
                child: Center(
                  child: Text('Account'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
