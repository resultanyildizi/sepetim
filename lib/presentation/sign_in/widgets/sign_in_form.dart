import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:Sepetim/presentation/sign_in/widgets/google_sign_in_button.dart';
import 'package:Sepetim/presentation/sign_in/widgets/or_divider.dart';
import 'package:Sepetim/presentation/sign_in/widgets/text_fields.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (f) {
                f.maybeMap(
                  serverError: (_) => serverErrorPopup(context),
                  emailAlreadyInUse: (_) => emailAlreadyInUsePopup(context),
                  invalidEmailAndPasswordCombination: (_) =>
                      invalidEmailAndPasswordCombinationPopup(context),
                  networkException: (_) => networkExceptionPopup(context),
                  orElse: () {},
                );
              },
              (_) {
                ExtendedNavigator.of(context)
                    .pushReplacementNamed(Routes.applicationContentPage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 8.0),
              emailFormField(context),
              SizedBox(
                height: screenHeightByScalar(
                  context,
                  scalarSmall: 0.005,
                  scalarMedium: 0.01,
                  scalarBig: 0.01,
                ),
              ),
              passwordFormField(context),
              SizedBox(
                height: screenHeightByScalar(
                  context,
                  scalarSmall: 0.005,
                  scalarMedium: 0.01,
                  scalarBig: 0.01,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundedButton(
                      width: screenWidthByScalar(context, 0.4),
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          ),
                      text: translate(context, 'sign_up_button'),
                    ),
                    RoundedButton(
                      width: screenWidthByScalar(context, 0.4),
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                        FocusScope.of(context).unfocus();
                      },
                      text: translate(context, 'log_in_button'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeightByScalar(
                  context,
                  scalarSmall: 0.02,
                  scalarMedium: 0.03,
                  scalarBig: 0.04,
                ),
              ),
              DividerOr(),
              SizedBox(
                height: screenHeightByScalar(
                  context,
                  scalarSmall: 0.02,
                  scalarMedium: 0.03,
                  scalarBig: 0.04,
                ),
              ),
              GoogleSignInButton(
                onPressed: () {
                  context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithGooglePressed(),
                      );
                  FocusScope.of(context).unfocus();
                },
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    if (state.isSubmitting) ...[
                      SmallCircularProgressIndicator()
                    ],
                    const DividerDefault(),
                    RoundedButton(
                      width: screenWidthByScalar(context, 1.0),
                      onPressed: () {
                        ExtendedNavigator.of(context)
                            .pushVerifyAnonymousLoginPage();
                        FocusScope.of(context).unfocus();
                      },
                      text: translate(context, 'without_log_in'),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
