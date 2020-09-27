// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:Sepetim/application/content/bottom_navbar/bottom_navbar_bloc.dart';
import 'package:Sepetim/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:Sepetim/infrastructure/auth/firebase_auth_facade.dart';
import 'package:Sepetim/domain/auth/i_auth_facade.dart';
import 'package:Sepetim/infrastructure/theme/theme_repository.dart';
import 'package:Sepetim/domain/theme/i_theme_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:Sepetim/application/item_category/selector/item_category_selector_bloc.dart';
import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/reset_password_form/reset_password_form_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/application/theme/theme_bloc.dart';
import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/infrastructure/item/item_repository.dart';
import 'package:Sepetim/domain/item/i_item_repository.dart';
import 'package:Sepetim/application/item/actor/item_actor_bloc.dart';
import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/infrastructure/item_group/item_group_repository.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/application/item_group/actor/item_group_actor_bloc.dart';
import 'package:Sepetim/application/item_group/form/item_group_form_bloc.dart';
import 'package:Sepetim/application/item_group/watcher/item_group_watcher_bloc.dart';
import 'package:Sepetim/infrastructure/item_category/item_category_repository.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/application/item_category/actor/item_category_actor_bloc.dart';
import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/application/item_category/watcher/item_category_watcher_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final imagePickerInjectableModule = _$ImagePickerInjectableModule();
  g.registerFactory<BottomNavbarBloc>(() => BottomNavbarBloc());
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.fireBaseAuth);
  g.registerLazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<IThemeRepository>(() => ThemeRepository());
  g.registerLazySingleton<ImagePicker>(
      () => imagePickerInjectableModule.imagePicker);
  g.registerFactory<ItemCategorySelectorBloc>(() => ItemCategorySelectorBloc());
  g.registerFactory<PasswordVisibilityBloc>(() => PasswordVisibilityBloc());
  g.registerFactory<ResetPasswordFormBloc>(
      () => ResetPasswordFormBloc(g<IAuthFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<ThemeBloc>(() => ThemeBloc(g<IThemeRepository>()));
  g.registerFactory<AccountTransactionsBloc>(
      () => AccountTransactionsBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerLazySingleton<IItemRepository>(() => ItemRepository(
        g<Firestore>(),
        g<FirebaseStorage>(),
        g<ImagePicker>(),
      ));
  g.registerFactory<ItemActorBloc>(() => ItemActorBloc(g<IItemRepository>()));
  g.registerFactory<ItemFormBloc>(() => ItemFormBloc(g<IItemRepository>()));
  g.registerFactory<ItemWatcherBloc>(
      () => ItemWatcherBloc(g<IItemRepository>()));
  g.registerLazySingleton<IItemGroupRepository>(
      () => ItemGroupRepository(g<Firestore>(), g<IItemRepository>()));
  g.registerFactory<ItemGroupActorBloc>(
      () => ItemGroupActorBloc(g<IItemGroupRepository>()));
  g.registerFactory<ItemGroupFormBloc>(
      () => ItemGroupFormBloc(g<IItemGroupRepository>()));
  g.registerFactory<ItemGroupWatcherBloc>(
      () => ItemGroupWatcherBloc(g<IItemGroupRepository>()));
  g.registerLazySingleton<IItemCategoryRepository>(() => ItemCategoryRepository(
        g<Firestore>(),
        g<ImagePicker>(),
        g<FirebaseStorage>(),
        g<IItemGroupRepository>(),
      ));
  g.registerFactory<ItemCategoryActorBloc>(
      () => ItemCategoryActorBloc(g<IItemCategoryRepository>()));
  g.registerFactory<ItemCategoryFormBloc>(
      () => ItemCategoryFormBloc(g<IItemCategoryRepository>()));
  g.registerFactory<ItemCategoryWatcherBloc>(
      () => ItemCategoryWatcherBloc(g<IItemCategoryRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$ImagePickerInjectableModule extends ImagePickerInjectableModule {}
