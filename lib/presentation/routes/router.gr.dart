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
import 'package:Sepetim/presentation/application_content/application_content_page.dart';
import 'package:Sepetim/presentation/item_category/form/item_category_form.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/presentation/item_group/overview/item_group_overview_page.dart';
import 'package:Sepetim/presentation/item_group/form/item_group_form.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/presentation/item/overview/item_overview_page.dart';
import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/presentation/item/form/item_form.dart';
import 'package:Sepetim/domain/item/item.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const verifyAnonymousLoginPage = '/verify-anonymous-login-page';
  static const applicationContentPage = '/application-content-page';
  static const itemCategoryForm = '/item-category-form';
  static const itemGroupOverviewPage = '/item-group-overview-page';
  static const itemGroupForm = '/item-group-form';
  static const itemOverviewPage = '/item-overview-page';
  static const itemForm = '/item-form';
  static const all = {
    splashPage,
    signInPage,
    verifyAnonymousLoginPage,
    applicationContentPage,
    itemCategoryForm,
    itemGroupOverviewPage,
    itemGroupForm,
    itemOverviewPage,
    itemForm,
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
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(key: typedArgs.key),
          settings: settings,
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
      case Routes.applicationContentPage:
        if (hasInvalidArgs<ApplicationContentPageArguments>(args)) {
          return misTypedArgsRoute<ApplicationContentPageArguments>(args);
        }
        final typedArgs = args as ApplicationContentPageArguments ??
            ApplicationContentPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ApplicationContentPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.itemCategoryForm:
        if (hasInvalidArgs<ItemCategoryFormArguments>(args)) {
          return misTypedArgsRoute<ItemCategoryFormArguments>(args);
        }
        final typedArgs =
            args as ItemCategoryFormArguments ?? ItemCategoryFormArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ItemCategoryForm(
              key: typedArgs.key, editedCategory: typedArgs.editedCategory),
          settings: settings,
        );
      case Routes.itemGroupOverviewPage:
        if (hasInvalidArgs<ItemGroupOverviewPageArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<ItemGroupOverviewPageArguments>(args);
        }
        final typedArgs = args as ItemGroupOverviewPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => ItemGroupOverviewPage(
              key: typedArgs.key, category: typedArgs.category),
          settings: settings,
        );
      case Routes.itemGroupForm:
        if (hasInvalidArgs<ItemGroupFormArguments>(args)) {
          return misTypedArgsRoute<ItemGroupFormArguments>(args);
        }
        final typedArgs =
            args as ItemGroupFormArguments ?? ItemGroupFormArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ItemGroupForm(
              key: typedArgs.key,
              editedGroup: typedArgs.editedGroup,
              categoryId: typedArgs.categoryId),
          settings: settings,
        );
      case Routes.itemOverviewPage:
        if (hasInvalidArgs<ItemOverviewPageArguments>(args)) {
          return misTypedArgsRoute<ItemOverviewPageArguments>(args);
        }
        final typedArgs =
            args as ItemOverviewPageArguments ?? ItemOverviewPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ItemOverviewPage(
              key: typedArgs.key,
              categoryId: typedArgs.categoryId,
              group: typedArgs.group,
              watcherBloc: typedArgs.watcherBloc),
          settings: settings,
        );
      case Routes.itemForm:
        if (hasInvalidArgs<ItemFormArguments>(args)) {
          return misTypedArgsRoute<ItemFormArguments>(args);
        }
        final typedArgs = args as ItemFormArguments ?? ItemFormArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ItemForm(
              key: typedArgs.key,
              categoryId: typedArgs.categoryId,
              groupId: typedArgs.groupId,
              editedItem: typedArgs.editedItem),
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

//ApplicationContentPage arguments holder class
class ApplicationContentPageArguments {
  final Key key;
  ApplicationContentPageArguments({this.key});
}

//ItemCategoryForm arguments holder class
class ItemCategoryFormArguments {
  final Key key;
  final ItemCategory editedCategory;
  ItemCategoryFormArguments({this.key, this.editedCategory});
}

//ItemGroupOverviewPage arguments holder class
class ItemGroupOverviewPageArguments {
  final Key key;
  final ItemCategory category;
  ItemGroupOverviewPageArguments({this.key, @required this.category});
}

//ItemGroupForm arguments holder class
class ItemGroupFormArguments {
  final Key key;
  final ItemGroup editedGroup;
  final UniqueId categoryId;
  ItemGroupFormArguments({this.key, this.editedGroup, this.categoryId});
}

//ItemOverviewPage arguments holder class
class ItemOverviewPageArguments {
  final Key key;
  final UniqueId categoryId;
  final ItemGroup group;
  final ItemWatcherBloc watcherBloc;
  ItemOverviewPageArguments(
      {this.key, this.categoryId, this.group, this.watcherBloc});
}

//ItemForm arguments holder class
class ItemFormArguments {
  final Key key;
  final UniqueId categoryId;
  final UniqueId groupId;
  final Item editedItem;
  ItemFormArguments({this.key, this.categoryId, this.groupId, this.editedItem});
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

  Future pushApplicationContentPage({
    Key key,
  }) =>
      pushNamed(
        Routes.applicationContentPage,
        arguments: ApplicationContentPageArguments(key: key),
      );

  Future pushItemCategoryForm({
    Key key,
    ItemCategory editedCategory,
  }) =>
      pushNamed(
        Routes.itemCategoryForm,
        arguments:
            ItemCategoryFormArguments(key: key, editedCategory: editedCategory),
      );

  Future pushItemGroupOverviewPage({
    Key key,
    @required ItemCategory category,
  }) =>
      pushNamed(
        Routes.itemGroupOverviewPage,
        arguments: ItemGroupOverviewPageArguments(key: key, category: category),
      );

  Future pushItemGroupForm({
    Key key,
    ItemGroup editedGroup,
    UniqueId categoryId,
  }) =>
      pushNamed(
        Routes.itemGroupForm,
        arguments: ItemGroupFormArguments(
            key: key, editedGroup: editedGroup, categoryId: categoryId),
      );

  Future pushItemOverviewPage({
    Key key,
    UniqueId categoryId,
    ItemGroup group,
    ItemWatcherBloc watcherBloc,
  }) =>
      pushNamed(
        Routes.itemOverviewPage,
        arguments: ItemOverviewPageArguments(
            key: key,
            categoryId: categoryId,
            group: group,
            watcherBloc: watcherBloc),
      );

  Future pushItemForm({
    Key key,
    UniqueId categoryId,
    UniqueId groupId,
    Item editedItem,
  }) =>
      pushNamed(
        Routes.itemForm,
        arguments: ItemFormArguments(
            key: key,
            categoryId: categoryId,
            groupId: groupId,
            editedItem: editedItem),
      );
}
