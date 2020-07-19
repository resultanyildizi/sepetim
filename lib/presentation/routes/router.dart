import 'package:Sepetim/presentation/application_content/application_content_page.dart';
import 'package:Sepetim/presentation/item_category/form/item_category_form.dart';
import 'package:Sepetim/presentation/item_group/form/item_group_form.dart';
import 'package:Sepetim/presentation/item_group/overview/item_group_overview_page.dart';
import 'package:Sepetim/presentation/sign_in/sign_in_page.dart';
import 'package:Sepetim/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:Sepetim/presentation/sign_in/verify_anonymous_login_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @MaterialRoute(initial: true)
  SplashPage splashPage;
  @MaterialRoute()
  SignInPage signInPage;

  @MaterialRoute()
  VerifyAnonymousLoginPage verifyAnonymousLoginPage;

  @MaterialRoute()
  ApplicationContentPage applicationContentPage;

  @MaterialRoute()
  ItemCategoryForm itemCategoryForm;

  @MaterialRoute()
  ItemGroupOverviewPage itemGroupOverviewPage;

  @MaterialRoute()
  ItemGroupForm itemGroupForm;
}
