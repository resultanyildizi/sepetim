import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:flutter/material.dart';

class DividerDefault extends StatelessWidget {
  const DividerDefault({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: sepetimLightGrey,
      thickness: 1,
    );
  }
}
