import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/presentation/account/widgets/link_account_form.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/logo.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LinkAccountPage extends StatelessWidget {
  const LinkAccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PasswordVisibilityBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: robotoTextStyle(bold: true),
          ),
        ),
        body: DefaultPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                translate(context, 'sign_up'),
                style: robotoTextStyle(fontSize: 20.0, bold: true),
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
                child: LinkAccountForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
