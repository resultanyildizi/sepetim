// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:Sepetim/presentation/splash/splash_page.dart';
import 'package:Sepetim/presentation/sign_in/sign_in_page.dart';
import 'package:Sepetim/presentation/sign_in/verify_anonymous_login_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const verifyAnonymousLoginPage = '/verify-anonymous-login-page';
  static const all = {
    splashPage,
    signInPage,
    verifyAnonymousLoginPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        if (hasInvalidArgs<SignInPageArguments>(args)) {
          return misTypedArgsRoute<SignInPageArguments>(args);
        }
        final typedArgs = args as SignInPageArguments ?? SignInPageArguments();
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SignInPage(key: typedArgs.key),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          transitionDuration: const Duration(milliseconds: 400),
        );
      case Routes.verifyAnonymousLoginPage:
        if (hasInvalidArgs<VerifyAnonymousLoginPageArguments>(args)) {
          return misTypedArgsRoute<VerifyAnonymousLoginPageArguments>(args);
        }
        final typedArgs = args as VerifyAnonymousLoginPageArguments ??
            VerifyAnonymousLoginPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => VerifyAnonymousLoginPage(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SignInPage arguments holder class
class SignInPageArguments {
  final Key key;
  SignInPageArguments({this.key});
}

//VerifyAnonymousLoginPage arguments holder class
class VerifyAnonymousLoginPageArguments {
  final Key key;
  VerifyAnonymousLoginPageArguments({this.key});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage({
    Key key,
  }) =>
      pushNamed(
        Routes.signInPage,
        arguments: SignInPageArguments(key: key),
      );

  Future pushVerifyAnonymousLoginPage({
    Key key,
  }) =>
      pushNamed(
        Routes.verifyAnonymousLoginPage,
        arguments: VerifyAnonymousLoginPageArguments(key: key),
      );
}
