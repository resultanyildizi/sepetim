import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/account/widgets/google_sign_in_button.dart';
import 'package:Sepetim/presentation/account/widgets/text_fields.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:Sepetim/presentation/sign_in/widgets/or_divider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LinkAccountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => failure.maybeMap(
              cancelledByUser: (_) {},
              serverError: (_) => serverErrorPopup(context),
              emailAlreadyInUse: (_) => accountAlreadyExistsPopup(context),
              networkException: (_) => networkExceptionPopup(context),
              accountAlreadyExists: (_) => accountAlreadyExistsPopup(context),
              accountAlreadyLinked: (_) => serverErrorPopup(context),
              invalidCredential: (_) => invalidCredentialPopup(context),
              orElse: () {},
            ),
            (_) {
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              ExtendedNavigator.of(context).popUntil(
                (route) => route.settings.name == Routes.applicationContentPage,
              );
            },
          ),
        );
      },
      builder: (context, state) => Form(
        autovalidate: state.showErrorMessages,
        child: Column(
          children: [
            const SizedBox(height: 8),
            emailFormField(context),
            const SizedBox(height: 8),
            passwordFormField(context),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: RoundedButton(
                width: screenWidthByScalar(context, 1),
                onPressed: () {
                  context.bloc<SignInFormBloc>().add(
                      const SignInFormEvent.linkWithEmailAndPasswordPressed());
                  FocusScope.of(context).unfocus();
                },
                text: translate(context, 'sign_up_button'),
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
                context
                    .bloc<SignInFormBloc>()
                    .add(const SignInFormEvent.linkWithGoogleProviderPressed());
                FocusScope.of(context).unfocus();
              },
            ),
          ],
        ),
      ),
    );
  }
}
