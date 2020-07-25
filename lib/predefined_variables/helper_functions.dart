import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

double screenWidthByScalar(BuildContext context, double scalar) {
  return MediaQuery.of(context).size.width * scalar;
}

double screenHeightByScalar(
  BuildContext context, {
  @required double scalarSmall,
  @required double scalarMedium,
  @required double scalarBig,
}) {
  if (MediaQuery.of(context).size.height < 700) {
    return MediaQuery.of(context).size.height * scalarSmall;
  } else if (MediaQuery.of(context).size.height < 800) {
    return MediaQuery.of(context).size.height * scalarMedium;
  } else {
    return MediaQuery.of(context).size.height * scalarBig;
  }
}

String translate(BuildContext context, String key) {
  return AppLocalizations.of(context).translate(key);
}

double totalItemsPrice(KtList<Item> items) {
  double totalPrice = 0;

  items.forEach((item) {
    totalPrice += item.price.getOrCrash();
  });
  return totalPrice;
}
