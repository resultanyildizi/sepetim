import 'package:Sepetim/predefined_variables/colors.dart' as app_color;
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';

final sepetimLightTheme = ThemeData(
  brightness: Brightness.light,
  accentColor: app_color.sepetimYellow,
  primaryColor: app_color.sepetimYellow,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: app_color.sepetimGrey),
    textTheme: TextTheme(headline1: robotoTextStyle(bold: true)),
  ),
  textTheme: TextTheme(
    headline1: robotoTextStyle(fontSize: 24.0, bold: true),
    headline2: robotoTextStyle(fontSize: 20.0, bold: true),
    headline3: robotoTextStyle(fontSize: 20.0),
    headline4: robotoTextStyle(fontSize: 16.0, bold: true),
    bodyText1: didactGothicTextStyle(fontSize: 16.0),
    bodyText2: didactGothicTextStyle(fontSize: 16.0, color: Colors.grey),
    subtitle1: didactGothicTextStyle(fontSize: 14.0),
    subtitle2: didactGothicTextStyle(fontSize: 16.0),
  ),
  iconTheme: const IconThemeData(color: Colors.grey),
  inputDecorationTheme: InputDecorationTheme(
    suffixStyle: const TextStyle(color: app_color.sepetimLightGrey),
    contentPadding: const EdgeInsets.symmetric(horizontal: 1.0),
    labelStyle: didactGothicTextStyle(
      fontSize: 16.0,
      color: app_color.sepetimLightGrey,
    ),
    focusColor: app_color.sepetimLightGrey,
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: app_color.sepetimLightGrey),
    ),
  ),
  buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      colorScheme: const ColorScheme.light()
          .copyWith(primary: app_color.sepetimGrey, secondary: Colors.white)),
);

final sepetimDarkTheme = ThemeData(
  brightness: Brightness.light,
  accentColor: app_color.sepetimYellow,
  primaryColor: app_color.sepetimYellow,
  scaffoldBackgroundColor: Colors.grey[850],
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: app_color.sepetimGrey),
    textTheme: TextTheme(headline1: robotoTextStyle(bold: true)),
  ),
  textTheme: TextTheme(
    headline1: robotoTextStyle(fontSize: 24.0, bold: true, color: Colors.white),
    headline2: robotoTextStyle(fontSize: 20.0, bold: true, color: Colors.white),
    headline3: robotoTextStyle(fontSize: 20.0, color: Colors.white),
    headline4: robotoTextStyle(fontSize: 16.0, bold: true, color: Colors.white),
    bodyText1: didactGothicTextStyle(color: Colors.white, fontSize: 16.0),
    bodyText2: didactGothicTextStyle(color: Colors.white70, fontSize: 16.0),
    subtitle1: didactGothicTextStyle(color: Colors.white, fontSize: 14.0),
    subtitle2: didactGothicTextStyle(fontSize: 16.0, color: Colors.white),
  ),
  iconTheme: const IconThemeData(color: Colors.white70),
  inputDecorationTheme: InputDecorationTheme(
    suffixStyle: const TextStyle(color: app_color.sepetimLightGrey),
    contentPadding: const EdgeInsets.symmetric(horizontal: 1.0),
    labelStyle: didactGothicTextStyle(
      fontSize: 16.0,
      color: app_color.sepetimLightGrey,
    ),
    focusColor: app_color.sepetimLightGrey,
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: app_color.sepetimLightGrey),
    ),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    colorScheme: const ColorScheme.light()
        .copyWith(primary: Colors.white, secondary: app_color.sepetimGrey),
  ),
);
