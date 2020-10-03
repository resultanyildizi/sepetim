// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

import 'application/auth/account_transactions/account_transactions_bloc.dart';
import 'application/auth/auth/auth_bloc_bloc.dart';
import 'application/content/bottom_navbar/bottom_navbar_bloc.dart';
import 'infrastructure/dynamic_links/dynamic_link_repository.dart';
import 'application/dynamic_links/dynamic_links_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/dynamic_links/i_dynamic_links_repository.dart';
import 'domain/item_category/i_category_repository.dart';
import 'domain/item_group/i_group_repository.dart';
import 'domain/item/i_item_repository.dart';
import 'domain/theme/i_theme_repository.dart';
import 'application/item/actor/item_actor_bloc.dart';
import 'application/item_category/actor/item_category_actor_bloc.dart';
import 'application/item_category/form/item_category_form_bloc.dart';
import 'infrastructure/item_category/item_category_repository.dart';
import 'application/item_category/selector/item_category_selector_bloc.dart';
import 'application/item_category/watcher/item_category_watcher_bloc.dart';
import 'application/item/form/item_form_bloc.dart';
import 'application/item_group/actor/item_group_actor_bloc.dart';
import 'application/item_group/form/item_group_form_bloc.dart';
import 'infrastructure/item_group/item_group_repository.dart';
import 'application/item_group/watcher/item_group_watcher_bloc.dart';
import 'infrastructure/item/item_repository.dart';
import 'application/item/watcher/item_watcher_bloc.dart';
import 'application/auth/password_visibility/password_visibility_bloc.dart';
import 'application/auth/reset_password_form/reset_password_form_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/theme/theme_bloc.dart';
import 'infrastructure/theme/theme_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final imagePickerInjectableModule = _$ImagePickerInjectableModule();
  gh.factory<BottomNavbarBloc>(() => BottomNavbarBloc());
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.fireBaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IDynamicLinksRepository>(() => DynamicLinkRepository());
  gh.lazySingleton<IItemGroupRepository>(
      () => ItemGroupRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IThemeRepository>(() => ThemeRepository());
  gh.lazySingleton<ImagePicker>(() => imagePickerInjectableModule.imagePicker);
  gh.factory<ItemCategorySelectorBloc>(() => ItemCategorySelectorBloc());
  gh.factory<ItemGroupActorBloc>(
      () => ItemGroupActorBloc(get<IItemGroupRepository>()));
  gh.factory<ItemGroupFormBloc>(
      () => ItemGroupFormBloc(get<IItemGroupRepository>()));
  gh.factory<ItemGroupWatcherBloc>(
      () => ItemGroupWatcherBloc(get<IItemGroupRepository>()));
  gh.factory<PasswordVisibilityBloc>(() => PasswordVisibilityBloc());
  gh.factory<ResetPasswordFormBloc>(
      () => ResetPasswordFormBloc(get<IAuthFacade>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<ThemeBloc>(() => ThemeBloc(get<IThemeRepository>()));
  gh.factory<AccountTransactionsBloc>(
      () => AccountTransactionsBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<DynamicLinksBloc>(
      () => DynamicLinksBloc(get<IDynamicLinksRepository>()));
  gh.lazySingleton<IItemCategoryRepository>(() => ItemCategoryRepository(
        get<FirebaseFirestore>(),
        get<ImagePicker>(),
        get<FirebaseStorage>(),
      ));
  gh.lazySingleton<IItemRepository>(() => ItemRepository(
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
        get<ImagePicker>(),
      ));
  gh.factory<ItemActorBloc>(() => ItemActorBloc(get<IItemRepository>()));
  gh.factory<ItemCategoryActorBloc>(
      () => ItemCategoryActorBloc(get<IItemCategoryRepository>()));
  gh.factory<ItemCategoryFormBloc>(
      () => ItemCategoryFormBloc(get<IItemCategoryRepository>()));
  gh.factory<ItemCategoryWatcherBloc>(
      () => ItemCategoryWatcherBloc(get<IItemCategoryRepository>()));
  gh.factory<ItemFormBloc>(() => ItemFormBloc(get<IItemRepository>()));
  gh.factory<ItemWatcherBloc>(() => ItemWatcherBloc(get<IItemRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$ImagePickerInjectableModule extends ImagePickerInjectableModule {}
