import 'package:Sepetim/presentation/sign_in/sign_in_page.dart';
import 'package:Sepetim/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:Sepetim/presentation/sign_in/verify_anonymous_login_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @MaterialRoute(initial: true)
  SplashPage splashPage;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 400,
  )
  SignInPage signInPage;

  @MaterialRoute()
  VerifyAnonymousLoginPage verifyAnonymousLoginPage;
}
