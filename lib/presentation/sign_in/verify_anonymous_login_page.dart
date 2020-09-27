import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyAnonymousLoginPage extends StatelessWidget {
  const VerifyAnonymousLoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          translate(context, 'without_log_in'),
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignInFormBloc>(),
          ),
        ],
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (f) {
                    f.maybeMap(
                      serverError: (_) => serverErrorPopup(context),
                      networkException: (_) => networkExceptionPopup(context),
                      orElse: () {},
                    );
                  },
                  (_) {
                    ExtendedNavigator.of(context).pushNamedAndRemoveUntil(
                        Routes.applicationContentPage, (route) => false);
                    context
                        .bloc<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                );
              },
            );
          },
          builder: (context, state) => DefaultPadding(
            child: Column(
              children: <Widget>[
                Text(
                  translate(context, 'verify_anonymous_login_text'),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      if (state.isSubmitting) ...[
                        SmallCircularProgressIndicator(),
                      ],
                      const DividerDefault(),
                      RoundedButton(
                        width: screenWidthByScalar(context, 1.0),
                        onPressed: () {
                          context
                              .bloc<SignInFormBloc>()
                              .add(const SignInFormEvent.signInAnonymously());
                        },
                        text: translate(context, 'continue_anyway'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
