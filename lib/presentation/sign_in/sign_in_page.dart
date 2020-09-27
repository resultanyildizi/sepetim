import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/logo.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SignInFormBloc>(
            create: (context) => getIt<SignInFormBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<PasswordVisibilityBloc>(),
          )
        ],
        child: SafeArea(
          child: DefaultPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: screenHeightByScalar(
                    context,
                    scalarSmall: 0.02,
                    scalarMedium: 0.03,
                    scalarBig: 0.03,
                  ),
                ),
                LogoCenter(
                  height: screenHeightByScalar(
                    context,
                    scalarSmall: 0.12,
                    scalarMedium: 0.12,
                    scalarBig: 0.14,
                  ),
                ),
                SizedBox(
                  height: screenHeightByScalar(
                    context,
                    scalarSmall: 0.02,
                    scalarMedium: 0.04,
                    scalarBig: 0.04,
                  ),
                ),
                Text(
                  translate(context, 'sign_up'),
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                AppLocalizations.of(context).termsAndPrivacyPolicy(context),
                SizedBox(
                  height: screenHeightByScalar(
                    context,
                    scalarSmall: 0.001,
                    scalarMedium: 0.0015,
                    scalarBig: 0.0015,
                  ),
                ),
                Expanded(
                  child: SignInForm(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
