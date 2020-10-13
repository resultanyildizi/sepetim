import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';

List<Widget> getTitleWithKey(BuildContext context, String key) {
  return [
    Text(
      translate(context, key),
      style: Theme.of(context).textTheme.headline2,
    ),
    const SizedBox(height: 8.0),
  ];
}

List<Widget> getParagraphWithKey(BuildContext context, String key) {
  return [
    Text(
      translate(context, key),
      style: Theme.of(context).textTheme.bodyText1,
    ),
    const SizedBox(height: 16.0),
  ];
}

Widget getInfoBox(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(8),
    constraints: BoxConstraints(maxWidth: screenWidthByScalar(context, 1)),
    decoration: BoxDecoration(
      color: sepetimYellow,
      borderRadius: BorderRadius.circular(5),
    ),
    child: ListTile(
      leading: const Icon(
        Icons.info_outline,
        color: sepetimGrey,
        size: 40,
      ),
      title: Text(
        translate(context, "tc_section/turkish_will_come_soon"),
        style: didactGothicTextStyle(bold: true),
      ),
    ),
  );
}
