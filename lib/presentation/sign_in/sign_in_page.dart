import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/injection.dart';
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
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: screenHeightByScalar(context, 0.03),
                ),
                LogoCenter(),
                SizedBox(
                  height: screenHeightByScalar(context, 0.06),
                ),
                Text(
                  translate(context, 'sign_up'),
                  style: robotoTextStyle(fontSize: 20.0, bold: true),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                AppLocalizations.of(context).termsAndPrivacyPolicy(context),
                const SizedBox(
                  height: 10.0,
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
