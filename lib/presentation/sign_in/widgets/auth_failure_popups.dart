import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

Future networkExceptionPopup(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        translate(context, 'server_error_title'),
        style: robotoTextStyle(),
      ),
      content: Text(
        translate(context, 'server_error_message'),
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      actions: <Widget>[
        RoundedButton(
          width: screenWidthByScalar(context, 1.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: translate(context, 'okay'),
        )
      ],
    ),
  );
}

Future serverErrorPopup(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        translate(context, 'unexpected_server_error_title'),
        style: robotoTextStyle(),
      ),
      content: Text(
        translate(context, 'unexpected_server_error_message'),
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      actions: <Widget>[
        RoundedButton(
          width: screenWidthByScalar(context, 1.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: translate(context, 'okay'),
        )
      ],
    ),
  );
}

Future emailAlreadyInUsePopup(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        translate(context, 'email_already_in_use_title'),
        style: robotoTextStyle(),
      ),
      content: Text(translate(context, 'email_already_in_use_message')),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      actions: <Widget>[
        RoundedButton(
          width: screenWidthByScalar(context, 1.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: translate(context, 'okay'),
        )
      ],
    ),
  );
}

Future invalidEmailAndPasswordCombinationPopup(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(
        translate(context, 'invalid_email_and_password_combination_title'),
        style: robotoTextStyle(),
      ),
      content: Text(
          translate(context, 'invalid_email_and_password_combination_message')),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      actions: <Widget>[
        RoundedButton(
          width: screenWidthByScalar(context, 1.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: translate(context, 'okay'),
        )
      ],
    ),
  );
}
