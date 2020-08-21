import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
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
                                ExtendedNavigator.of(context).popUntil(
                                    (route) =>
                                        route.settings.name ==
                                        Routes.applicationContentPage);
                                return serverErrorPopup(context);
                              },
                              networkException: (_) {
                                ExtendedNavigator.of(context).popUntil(
                                    (route) =>
                                        route.settings.name ==
                                        Routes.applicationContentPage);
                                return networkExceptionPopup(context);
                              },
                              tooManyRequests: (_) {
                                ExtendedNavigator.of(context).popUntil(
                                    (route) =>
                                        route.settings.name ==
                                        Routes.applicationContentPage);
                                return tooManyRequestsPopup(context);
                              },
                              orElse: () {});
                        },
                        (_) {
                          /*
                          ExtendedNavigator.of(context)
                              .pushReplacementNamed(Routes.splashPage);*/
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
                            FlatRectangleButton(
                              onPressed: () {
                                context
                                    .bloc<AuthBloc>()
                                    .add(const AuthEvent.signedOut());
                              },
                              color: Colors.grey,
                              child: Text(
                                translate(context, 'change_email'),
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
                      FlatRectangleButton(
                        onPressed: () {
                          deletePopup(context,
                              title: translate(context, 'delete_account_title'),
                              message:
                                  translate(context, 'delete_account_message'),
                              action: () {
                            context.bloc<AccountTransactionsBloc>().add(
                                const AccountTransactionsEvent
                                    .accountDeleted());
                            context
                                .bloc<AuthBloc>()
                                .add(const AuthEvent.authCheckRequested());
                          });
                        },
                        color: Colors.grey,
                        child: Text(
                          translate(context, 'delete_account'),
                          style: didactGothicTextStyle(
                              fontSize: 16.0, bold: true, color: Colors.grey),
                        ),
                      ),
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

  FlatRectangleButton signOutButton(BuildContext context) {
    return FlatRectangleButton(
      onPressed: () {
        context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
      },
      color: Colors.grey,
      child: Text(
        translate(context, 'sign_out'),
        style: didactGothicTextStyle(
            fontSize: 16.0, bold: true, color: Colors.grey),
      ),
    );
  }

  Widget changePasswordButton(
    BuildContext context,
  ) {
    String validatorText = "";
    final _textController = TextEditingController();

    return FlatRectangleButton(
      onPressed: () {
        context
            .bloc<AccountTransactionsBloc>()
            .add(const AccountTransactionsEvent.resetState());
        _textController.text = "";
        verifyPasswordPopup(context, validatorText, _textController);
      },
      color: Colors.grey,
      child: Text(
        translate(context, 'change_password'),
        style: didactGothicTextStyle(
            fontSize: 16.0, bold: true, color: Colors.grey),
      ),
    );
  }

  Future verifyPasswordPopup(
    BuildContext context,
    String validatorText,
    TextEditingController _textController,
  ) {
    // TODO: translate

    return actionPopup(context,
        backgroundColor: Colors.white,
        barrierDismissible: true,
        title: Text(
          "Şifreni doğrula",
          style: robotoTextStyle(),
        ),
        content:
            BlocConsumer<AccountTransactionsBloc, AccountTransactionsState>(
          bloc: context.bloc<AccountTransactionsBloc>(),
          listener: (context, state) {
            state.authFailureOrUnitOption.fold(
              () => validatorText = '',
              (either) {
                either.fold(
                  (f) {
                    f.maybeMap(
                      wrongPassword: (_) => validatorText = 'Wrong password',
                      orElse: () => null,
                    );
                  },
                  (_) {
                    ExtendedNavigator.of(context).pop();
                    changePasswordPopup(context);
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return Container(
              height: 130.0,
              child: Column(
                children: [
                  Text('Doğrulamak için lütfen şuanki şifrenizi giriniz'),
                  const SizedBox(height: 5.0),
                  Form(
                    autovalidate: state.showErrorMessages,
                    child: TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(labelText: 'Şimdiki şifre'),
                      autofocus: true,
                      obscureText: true,
                      validator: (_) => validatorText,
                    ),
                  ),
                  const Spacer(),
                  if (state.isProgressing) ...[
                    const LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      minHeight: 1,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(sepetimLightGrey),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
        actions: [
          RoundedButton(
            onPressed: () {
              ExtendedNavigator.of(context).pop();
            },
            text: translate(context, 'cancel'),
          ),
          RoundedButton(
            onPressed: () {
              if (_textController.text.trim() != "") {
                context.bloc<AccountTransactionsBloc>().add(
                    AccountTransactionsEvent.currentPasswordVerified(
                        _textController.text.trim()));
              }
            },
            text: 'Doğrula',
          )
        ]);
  }

  Future changePasswordPopup(BuildContext context) {
    return actionPopup(context,
        backgroundColor: Colors.white,
        title: Text('Change password'),
        content: Column(
          children: [
            Text('Type your new password'),
            const SizedBox(height: 5.0),
            Form(
              autovalidate: true,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'New password'),
                autofocus: true,
                obscureText: true,
              ),
            )
          ],
        ));
  }
}
