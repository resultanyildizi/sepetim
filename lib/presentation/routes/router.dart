import 'package:Sepetim/presentation/account/link_account_page.dart';
import 'package:Sepetim/presentation/application_content/application_content_page.dart';
import 'package:Sepetim/presentation/home/item/form/item_form.dart';
import 'package:Sepetim/presentation/home/item/form/link_form/link_form.dart';
import 'package:Sepetim/presentation/home/item/form/widgets/edit_description_page.dart';
import 'package:Sepetim/presentation/home/item/overview/item_overview_page.dart';
import 'package:Sepetim/presentation/home/item/overview/widgets/item_page.dart';
import 'package:Sepetim/presentation/home/item_category/form/item_category_form.dart';
import 'package:Sepetim/presentation/home/item_group/form/item_group_form.dart';
import 'package:Sepetim/presentation/home/item_group/overview/item_group_overview_page.dart';
import 'package:Sepetim/presentation/settings/contact_us/contact_us_page.dart';
import 'package:Sepetim/presentation/settings/themes/themes_page.dart';
import 'package:Sepetim/presentation/sign_in/reset_password_page.dart';
import 'package:Sepetim/presentation/sign_in/sign_in_page.dart';
import 'package:Sepetim/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:Sepetim/presentation/sign_in/verify_anonymous_login_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: VerifyAnonymousLoginPage),
  MaterialRoute(page: ApplicationContentPage),
  MaterialRoute(page: ItemCategoryForm),
  MaterialRoute(page: ItemGroupOverviewPage),
  MaterialRoute(page: ItemGroupForm),
  MaterialRoute(page: ItemOverviewPage),
  MaterialRoute(page: ItemForm),
  MaterialRoute(page: ItemPage),
  MaterialRoute(page: EditDescriptionPage),
  MaterialRoute(page: LinkForm),
  MaterialRoute(page: ResetPasswordPage),
  MaterialRoute(page: LinkAccountPage),
  MaterialRoute(page: ThemesPage),
  MaterialRoute(page: ContactUsPage),
], generateNavigationHelperExtension: true)
class $Router {}
