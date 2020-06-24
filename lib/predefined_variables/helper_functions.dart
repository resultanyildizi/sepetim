import 'package:Sepetim/app_localization.dart';
import 'package:flutter/material.dart';

double screenWidthByScalar(BuildContext context, double scalar) {
  return MediaQuery.of(context).size.width * scalar;
}

double screenHeightByScalar(BuildContext context, double scalar) {
  return MediaQuery.of(context).size.height * scalar;
}

String translate(BuildContext context, String key) {
  return AppLocalizations.of(context).translate(key);
}
