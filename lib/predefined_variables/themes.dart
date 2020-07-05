import 'package:Sepetim/predefined_variables/colors.dart' as app_color;
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';

final ThemeData sepetimLightTheme = ThemeData(
  brightness: Brightness.light,
  accentColor: app_color.sepetimYellow,
  primaryColor: app_color.sepetimYellow,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: app_color.sepetimGrey,
    ),
    textTheme: TextTheme(headline1: robotoTextStyle(bold: true)),
  ),
  textTheme: Typography.blackCupertino.copyWith(
    bodyText1: robotoTextStyle(bold: true, color: app_color.sepetimGrey),
    subtitle1: didactGothicTextStyle(),
  ),
  inputDecorationTheme: InputDecorationTheme(
    suffixStyle: TextStyle(color: app_color.sepetimLightGrey),
    contentPadding: const EdgeInsets.symmetric(horizontal: 1.0),
    labelStyle: didactGothicTextStyle(
      fontSize: 16.0,
      bold: false,
      color: app_color.sepetimLightGrey,
    ),
    focusColor: app_color.sepetimLightGrey,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: app_color.sepetimLightGrey),
    ),
  ),
  buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      textTheme: ButtonTextTheme.accent,
      colorScheme: const ColorScheme.light().copyWith(
        secondary: Colors.white,
      )),
);
