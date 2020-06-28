import 'package:flutter/material.dart';

import 'package:Sepetim/predefined_variables/images.dart' as app_images;

class LogoCenter extends StatelessWidget {
  final double height;
  const LogoCenter({
    Key key,
    @required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: Center(
        child: Container(
          height: height,
          child: app_images.logoGrey,
        ),
      ),
    );
  }
}
