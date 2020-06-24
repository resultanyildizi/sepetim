import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 1,
          width: screenWidthByScalar(context, 0.35),
          color: app_colors.sepetimLightGrey,
        ),
        Text(
          translate(context, 'or'),
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Container(
          height: 1,
          width: screenWidthByScalar(context, 0.35),
          color: app_colors.sepetimLightGrey,
        ),
      ],
    );
  }
}
