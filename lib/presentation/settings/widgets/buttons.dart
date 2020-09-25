import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';

Widget contactUsButton({@required Function() onPressed}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    color: Colors.grey,
    child: Text(
      'Contact us',
      style: didactGothicTextStyle(
        fontSize: 16.0,
        bold: true,
        color: Colors.grey,
      ),
    ),
  );
}

Widget termsOfServiceButton({@required Function() onPressed}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    color: Colors.grey,
    child: Text(
      'Terms of Service',
      style: didactGothicTextStyle(
        fontSize: 16.0,
        bold: true,
        color: Colors.grey,
      ),
    ),
  );
}

Widget privacyPolicyButton({@required Function() onPressed}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    color: Colors.grey,
    child: Text(
      'Privacy Policy',
      style: didactGothicTextStyle(
        fontSize: 16.0,
        bold: true,
        color: Colors.grey,
      ),
    ),
  );
}

Widget themesButton({@required Function() onPressed}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    color: Colors.grey,
    child: Text(
      'Themes',
      style: didactGothicTextStyle(
        fontSize: 16.0,
        bold: true,
        color: Colors.grey,
      ),
    ),
  );
}

Widget shareAppButton({@required Function() onPressed}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    color: Colors.grey,
    child: Text(
      'Share App',
      style: didactGothicTextStyle(
        fontSize: 16.0,
        bold: true,
        color: Colors.grey,
      ),
    ),
  );
}
