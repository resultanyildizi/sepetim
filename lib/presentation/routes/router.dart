import 'package:Sepetim/presentation/application_content/application_content_page.dart';
import 'package:Sepetim/presentation/home/item/form/item_form.dart';
import 'package:Sepetim/presentation/home/item/form/link_form/link_form.dart';
import 'package:Sepetim/presentation/home/item/form/widgets/edit_description_page.dart';
import 'package:Sepetim/presentation/home/item/overview/item_overview_page.dart';
import 'package:Sepetim/presentation/home/item/overview/widgets/item_page.dart';
import 'package:Sepetim/presentation/home/item_category/form/item_category_form.dart';
import 'package:Sepetim/presentation/home/item_group/form/item_group_form.dart';
import 'package:Sepetim/presentation/home/item_group/overview/item_group_overview_page.dart';
import 'package:Sepetim/presentation/sign_in/sign_in_page.dart';
import 'package:Sepetim/presentation/splash/splash_page.dart';
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

  @MaterialRoute()
  ItemOverviewPage itemOverviewPage;

  @MaterialRoute()
  ItemForm itemForm;

  @MaterialRoute()
  ItemPage itemPage;

  @MaterialRoute()
  EditDescriptionPage editDescriptionPage;

  @MaterialRoute()
  LinkForm linkForm;
}
