import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:Sepetim/predefined_variables/images.dart' as app_images;

class LogoCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: Center(
        child: Container(
          width: screenWidthByScalar(context, 0.4),
          child: app_images.logoGrey,
        ),
      ),
    );
  }
}
