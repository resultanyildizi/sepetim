import 'package:flutter/material.dart';

import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';

class DefaultFloatingActionButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData iconData;
  const DefaultFloatingActionButton({
    Key key,
    @required this.onPressed,
    @required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      width: screenWidthByScalar(context, 0.13),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(
          iconData,
          color: sepetimGrey,
          size: 35,
        ),
      ),
    );
  }
}
