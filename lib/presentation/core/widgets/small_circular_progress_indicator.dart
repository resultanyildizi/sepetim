import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';

class SmallCircularProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeightByScalar(
        context,
        scalarSmall: 0.03,
        scalarMedium: 0.03,
        scalarBig: 0.03,
      ),
      width: screenHeightByScalar(
        context,
        scalarSmall: 0.03,
        scalarMedium: 0.03,
        scalarBig: 0.03,
      ),
      child: CircularProgressIndicator(
        backgroundColor: sepetimGrey,
        valueColor: AlwaysStoppedAnimation<Color>(sepetimYellow),
      ),
    );
  }
}
