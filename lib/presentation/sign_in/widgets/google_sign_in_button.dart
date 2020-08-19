import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;
import 'package:Sepetim/predefined_variables/images.dart' as app_images;
import 'package:flutter/material.dart';

import 'package:Sepetim/predefined_variables/helper_functions.dart';

class GoogleSignInButton extends StatelessWidget {
  final void Function() onPressed;
  const GoogleSignInButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      splashColor: Colors.white,
      onPressed: onPressed,
      color: const Color(0xFFF3F3F3),
      textTheme: ButtonTextTheme.normal,
      elevation: 4.0,
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            backgroundImage: app_images.googleLogo,
            radius: 16,
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            translate(context, 'sign_in_google'),
            style: const TextStyle(
              color: app_colors.sepetimGrey,
            ),
          ),
        ],
      ),
    );
  }
}
