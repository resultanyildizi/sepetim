import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/account/widgets/action_popups.dart';
import 'package:Sepetim/presentation/account/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
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
            unauthenticated: (_) => ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage),
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
                            actionPopup(
                              context,
                              backgroundColor: Colors.white,
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    color: Colors.lightGreen,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    translate(context, 'successful'),
                                    style: didactGothicTextStyle(),
                                  ),
                                ],
                              ),
                              content: Text(
                                translate(
                                    context, 'password_changed_successfully'),
                                style: didactGothicTextStyle(),
                              ),
                              actions: [
                                RoundedButton(
                                  text: translate(context, 'okay'),
                                  onPressed: () =>
                                      ExtendedNavigator.of(context).popUntil(
                                    (route) =>
                                        route.settings.name ==
                                        Routes.applicationContentPage,
                                  ),
                                )
                              ],
                            );
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
                      style: robotoTextStyle(bold: true),
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
                              style: didactGothicTextStyle(
                                  bold: true, fontSize: 16.0),
                            ),
                            (email) => Text(
                              email,
                              style: didactGothicTextStyle(
                                  bold: true, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        translate(context, 'account'),
                        style: robotoTextStyle(fontSize: 24.0, bold: true),
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
                            FlatRectangleButton(
                              onPressed: () {
                                context
                                    .bloc<AuthBloc>()
                                    .add(const AuthEvent.signedOut());
                              },
                              color: Colors.grey,
                              child: Text(
                                translate(context, 'register'),
                                style: didactGothicTextStyle(
                                    fontSize: 16.0,
                                    bold: true,
                                    color: Colors.grey),
                              ),
                            ),
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
