import 'package:flutter/cupertino.dart';
import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;

TextStyle robotoTextStyle({
  double fontSize,
  bool bold = false,
  Color color = app_colors.sepetimGrey,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    color: color,
  );
}

TextStyle didactGothicTextStyle({
  double fontSize,
  bool bold = false,
  Color color = app_colors.sepetimGrey,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    color: color,
    fontFamily: 'DidactGothic',
  );
}
