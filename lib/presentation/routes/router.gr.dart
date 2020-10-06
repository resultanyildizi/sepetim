// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/item/actor/item_actor_bloc.dart';
import '../../application/item/form/item_form_bloc.dart';
import '../../application/item/watcher/item_watcher_bloc.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/item/item.dart';
import '../../domain/item_category/item_category.dart';
import '../../domain/item_group/item_group.dart';
import '../account/link_account_page.dart';
import '../application_content/application_content_page.dart';
import '../home/item/form/item_form.dart';
import '../home/item/form/link_form/link_form.dart';
import '../home/item/form/widgets/edit_description_page.dart';
import '../home/item/overview/item_overview_page.dart';
import '../home/item/overview/widgets/item_page.dart';
import '../home/item_category/form/item_category_form.dart';
import '../home/item_group/form/item_group_form.dart';
import '../home/item_group/overview/item_group_overview_page.dart';
import '../settings/contact_us/contact_us_page.dart';
import '../settings/themes/themes_page.dart';
import '../sign_in/reset_password_page.dart';
import '../sign_in/sign_in_page.dart';
import '../sign_in/verify_anonymous_login_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String verifyAnonymousLoginPage = '/verify-anonymous-login-page';
  static const String applicationContentPage = '/application-content-page';
  static const String itemCategoryForm = '/item-category-form';
  static const String itemGroupOverviewPage = '/item-group-overview-page';
  static const String itemGroupForm = '/item-group-form';
  static const String itemOverviewPage = '/item-overview-page';
  static const String itemForm = '/item-form';
  static const String itemPage = '/item-page';
  static const String editDescriptionPage = '/edit-description-page';
  static const String linkForm = '/link-form';
  static const String resetPasswordPage = '/reset-password-page';
  static const String linkAccountPage = '/link-account-page';
  static const String themesPage = '/themes-page';
  static const String contactUsPage = '/contact-us-page';
  static const all = <String>{
    splashPage,
    signInPage,
    verifyAnonymousLoginPage,
    applicationContentPage,
    itemCategoryForm,
    itemGroupOverviewPage,
    itemGroupForm,
    itemOverviewPage,
    itemForm,
    itemPage,
    editDescriptionPage,
    linkForm,
    resetPasswordPage,
    linkAccountPage,
    themesPage,
    contactUsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.verifyAnonymousLoginPage, page: VerifyAnonymousLoginPage),
    RouteDef(Routes.applicationContentPage, page: ApplicationContentPage),
    RouteDef(Routes.itemCategoryForm, page: ItemCategoryForm),
    RouteDef(Routes.itemGroupOverviewPage, page: ItemGroupOverviewPage),
    RouteDef(Routes.itemGroupForm, page: ItemGroupForm),
    RouteDef(Routes.itemOverviewPage, page: ItemOverviewPage),
    RouteDef(Routes.itemForm, page: ItemForm),
    RouteDef(Routes.itemPage, page: ItemPage),
    RouteDef(Routes.editDescriptionPage, page: EditDescriptionPage),
    RouteDef(Routes.linkForm, page: LinkForm),
    RouteDef(Routes.resetPasswordPage, page: ResetPasswordPage),
    RouteDef(Routes.linkAccountPage, page: LinkAccountPage),
    RouteDef(Routes.themesPage, page: ThemesPage),
    RouteDef(Routes.contactUsPage, page: ContactUsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignInPage(),
        settings: data,
      );
    },
    VerifyAnonymousLoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const VerifyAnonymousLoginPage(),
        settings: data,
      );
    },
    ApplicationContentPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ApplicationContentPage(),
        settings: data,
      );
    },
    ItemCategoryForm: (data) {
      final args = data.getArgs<ItemCategoryFormArguments>(
        orElse: () => ItemCategoryFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemCategoryForm(
          key: args.key,
          editedCategory: args.editedCategory,
        ),
        settings: data,
      );
    },
    ItemGroupOverviewPage: (data) {
      final args = data.getArgs<ItemGroupOverviewPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemGroupOverviewPage(
          key: args.key,
          category: args.category,
        ),
        settings: data,
      );
    },
    ItemGroupForm: (data) {
      final args = data.getArgs<ItemGroupFormArguments>(
        orElse: () => ItemGroupFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemGroupForm(
          key: args.key,
          editedGroup: args.editedGroup,
          categoryId: args.categoryId,
        ),
        settings: data,
      );
    },
    ItemOverviewPage: (data) {
      final args = data.getArgs<ItemOverviewPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemOverviewPage(
          key: args.key,
          category: args.category,
          group: args.group,
          watcherBloc: args.watcherBloc,
        ),
        settings: data,
      );
    },
    ItemForm: (data) {
      final args = data.getArgs<ItemFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemForm(
          key: args.key,
          category: args.category,
          group: args.group,
          editedItem: args.editedItem,
        ),
        settings: data,
      );
    },
    ItemPage: (data) {
      final args = data.getArgs<ItemPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemPage(
          key: args.key,
          category: args.category,
          group: args.group,
          formBloc: args.formBloc,
        ),
        settings: data,
      );
    },
    EditDescriptionPage: (data) {
      final args = data.getArgs<EditDescriptionPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditDescriptionPage(
          key: args.key,
          itemFormBloc: args.itemFormBloc,
          initialText: args.initialText,
        ),
        settings: data,
      );
    },
    LinkForm: (data) {
      final args = data.getArgs<LinkFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LinkForm(
          key: args.key,
          category: args.category,
          group: args.group,
          formBloc: args.formBloc,
          actorBloc: args.actorBloc,
        ),
        settings: data,
      );
    },
    ResetPasswordPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ResetPasswordPage(),
        settings: data,
      );
    },
    LinkAccountPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LinkAccountPage(),
        settings: data,
      );
    },
    ThemesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ThemesPage(),
        settings: data,
      );
    },
    ContactUsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ContactUsPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushVerifyAnonymousLoginPage() =>
      push<dynamic>(Routes.verifyAnonymousLoginPage);

  Future<dynamic> pushApplicationContentPage() =>
      push<dynamic>(Routes.applicationContentPage);

  Future<dynamic> pushItemCategoryForm({
    Key key,
    ItemCategory editedCategory,
  }) =>
      push<dynamic>(
        Routes.itemCategoryForm,
        arguments:
            ItemCategoryFormArguments(key: key, editedCategory: editedCategory),
      );

  Future<dynamic> pushItemGroupOverviewPage({
    Key key,
    @required ItemCategory category,
  }) =>
      push<dynamic>(
        Routes.itemGroupOverviewPage,
        arguments: ItemGroupOverviewPageArguments(key: key, category: category),
      );

  Future<dynamic> pushItemGroupForm({
    Key key,
    ItemGroup editedGroup,
    UniqueId categoryId,
  }) =>
      push<dynamic>(
        Routes.itemGroupForm,
        arguments: ItemGroupFormArguments(
            key: key, editedGroup: editedGroup, categoryId: categoryId),
      );

  Future<dynamic> pushItemOverviewPage({
    Key key,
    @required ItemCategory category,
    @required ItemGroup group,
    @required ItemWatcherBloc watcherBloc,
  }) =>
      push<dynamic>(
        Routes.itemOverviewPage,
        arguments: ItemOverviewPageArguments(
            key: key,
            category: category,
            group: group,
            watcherBloc: watcherBloc),
      );

  Future<dynamic> pushItemForm({
    Key key,
    @required ItemCategory category,
    @required ItemGroup group,
    @required Item editedItem,
  }) =>
      push<dynamic>(
        Routes.itemForm,
        arguments: ItemFormArguments(
            key: key, category: category, group: group, editedItem: editedItem),
      );

  Future<dynamic> pushItemPage({
    Key key,
    @required ItemCategory category,
    @required ItemGroup group,
    @required ItemFormBloc formBloc,
  }) =>
      push<dynamic>(
        Routes.itemPage,
        arguments: ItemPageArguments(
            key: key, category: category, group: group, formBloc: formBloc),
      );

  Future<dynamic> pushEditDescriptionPage({
    Key key,
    @required ItemFormBloc itemFormBloc,
    @required String initialText,
  }) =>
      push<dynamic>(
        Routes.editDescriptionPage,
        arguments: EditDescriptionPageArguments(
            key: key, itemFormBloc: itemFormBloc, initialText: initialText),
      );

  Future<dynamic> pushLinkForm({
    Key key,
    @required ItemCategory category,
    @required ItemGroup group,
    @required ItemFormBloc formBloc,
    @required ItemActorBloc actorBloc,
  }) =>
      push<dynamic>(
        Routes.linkForm,
        arguments: LinkFormArguments(
            key: key,
            category: category,
            group: group,
            formBloc: formBloc,
            actorBloc: actorBloc),
      );

  Future<dynamic> pushResetPasswordPage() =>
      push<dynamic>(Routes.resetPasswordPage);

  Future<dynamic> pushLinkAccountPage() =>
      push<dynamic>(Routes.linkAccountPage);

  Future<dynamic> pushThemesPage() => push<dynamic>(Routes.themesPage);

  Future<dynamic> pushContactUsPage() => push<dynamic>(Routes.contactUsPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ItemCategoryForm arguments holder class
class ItemCategoryFormArguments {
  final Key key;
  final ItemCategory editedCategory;
  ItemCategoryFormArguments({this.key, this.editedCategory});
}

/// ItemGroupOverviewPage arguments holder class
class ItemGroupOverviewPageArguments {
  final Key key;
  final ItemCategory category;
  ItemGroupOverviewPageArguments({this.key, @required this.category});
}

/// ItemGroupForm arguments holder class
class ItemGroupFormArguments {
  final Key key;
  final ItemGroup editedGroup;
  final UniqueId categoryId;
  ItemGroupFormArguments({this.key, this.editedGroup, this.categoryId});
}

/// ItemOverviewPage arguments holder class
class ItemOverviewPageArguments {
  final Key key;
  final ItemCategory category;
  final ItemGroup group;
  final ItemWatcherBloc watcherBloc;
  ItemOverviewPageArguments(
      {this.key,
      @required this.category,
      @required this.group,
      @required this.watcherBloc});
}

/// ItemForm arguments holder class
class ItemFormArguments {
  final Key key;
  final ItemCategory category;
  final ItemGroup group;
  final Item editedItem;
  ItemFormArguments(
      {this.key,
      @required this.category,
      @required this.group,
      @required this.editedItem});
}

/// ItemPage arguments holder class
class ItemPageArguments {
  final Key key;
  final ItemCategory category;
  final ItemGroup group;
  final ItemFormBloc formBloc;
  ItemPageArguments(
      {this.key,
      @required this.category,
      @required this.group,
      @required this.formBloc});
}

/// EditDescriptionPage arguments holder class
class EditDescriptionPageArguments {
  final Key key;
  final ItemFormBloc itemFormBloc;
  final String initialText;
  EditDescriptionPageArguments(
      {this.key, @required this.itemFormBloc, @required this.initialText});
}

/// LinkForm arguments holder class
class LinkFormArguments {
  final Key key;
  final ItemCategory category;
  final ItemGroup group;
  final ItemFormBloc formBloc;
  final ItemActorBloc actorBloc;
  LinkFormArguments(
      {this.key,
      @required this.category,
      @required this.group,
      @required this.formBloc,
      @required this.actorBloc});
}
