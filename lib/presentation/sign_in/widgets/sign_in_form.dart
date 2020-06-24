import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:Sepetim/presentation/sign_in/widgets/google_sign_in_button.dart';
import 'package:Sepetim/presentation/sign_in/widgets/or_divider.dart';
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
                f.map(
                  cancelledByUser: (_) => null,
                  serverError: (_) async => serverErrorPopup(context),
                  emailAlreadyInUse: (_) async =>
                      emailAlreadyInUsePopup(context),
                  invalidEmailAndPasswordCombination: (_) async =>
                      invalidEmailAndPasswordCombinationPopup(context),
                  networkException: (_) async => networkExceptionPopup(context),
                );
              },
              (_) {},
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
              SizedBox(height: screenWidthByScalar(context, 0.03)),
              passwordFormField(context),
              SizedBox(height: screenWidthByScalar(context, 0.03)),
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
              SizedBox(height: screenWidthByScalar(context, 0.06)),
              DividerOr(),
              SizedBox(height: screenWidthByScalar(context, 0.06)),
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
                    const Divider(
                      color: sepetimLightGrey,
                      thickness: 1,
                    ),
                    RoundedButton(
                      width: screenWidthByScalar(context, 1.0),
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent.signInAnonymously(),
                            );
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

  Widget emailFormField(BuildContext context) {
    return TextFormField(
      cursorColor: sepetimGrey,
      keyboardType: TextInputType.emailAddress,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(labelText: translate(context, 'email')),
      autocorrect: false,
      onChanged: (value) => context
          .bloc<SignInFormBloc>()
          .add(SignInFormEvent.emailChanged(value)),
      validator: (_) =>
          context.bloc<SignInFormBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) => translate(context, 'invalid_email'),
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }

  Widget passwordFormField(BuildContext context) {
    return BlocBuilder<PasswordVisibilityBloc, PasswordVisibilityState>(
      builder: (context, state) => TextFormField(
        obscureText: !state.isVisible,
        cursorColor: sepetimGrey,
        keyboardType: TextInputType.visiblePassword,
        style: Theme.of(context).textTheme.subtitle1,
        decoration: InputDecoration(
          labelText: translate(context, 'password'),
          suffixIcon: IconButton(
            icon: state.isVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () => context.bloc<PasswordVisibilityBloc>().add(
                  const PasswordVisibilityEvent.visibilityChanged(),
                ),
            color: sepetimLightGrey,
          ),
        ),
        autocorrect: false,
        onChanged: (value) => context
            .bloc<SignInFormBloc>()
            .add(SignInFormEvent.passwordChanged(value)),
        validator: (_) =>
            context.bloc<SignInFormBloc>().state.password.value.fold(
                  (f) => f.maybeMap(
                    weakPassword: (_) => translate(context, 'weak_password'),
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
      ),
    );
  }
}
