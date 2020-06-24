import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/presentation/core/widgets/logo.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
        );
      },
      child: Scaffold(
        backgroundColor: app_colors.sepetimYellow,
        body: LogoCenter(),
      ),
    );
  }
}
