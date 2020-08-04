import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';

class SmallCircularProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        backgroundColor: sepetimGrey,
        valueColor: AlwaysStoppedAnimation<Color>(sepetimYellow),
      ),
    );
  }
}
