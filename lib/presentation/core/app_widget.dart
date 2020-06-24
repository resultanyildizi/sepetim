import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:Sepetim/predefined_variables/themes.dart' as app_themes;

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Sepetim',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: Router()),
        theme: app_themes.sepetimLightTheme,
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale.fromSubtags(languageCode: 'tr', countryCode: 'TR'),
        ],
        localizationsDelegates: [
          //* A class which loads the translations from JSON files
          AppLocalizations.delegate,
          //* Built-in localization of basic text for Material Widgets
          GlobalMaterialLocalizations.delegate,
          //* Built-in localization fot text direction LTR/RTL
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (final supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
      ),
    );
  }
}
