import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';

Future networkExceptionPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'server_error_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'server_error_message'),
    ),
    actions: <Widget>[
      RoundedButton(
        width: screenWidthByScalar(context, 1.0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        text: translate(context, 'okay'),
      )
    ],
  );
}

Future serverErrorPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'unexpected_server_error_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'unexpected_server_error_message'),
    ),
    actions: <Widget>[
      RoundedButton(
        width: screenWidthByScalar(context, 1.0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        text: translate(context, 'okay'),
      )
    ],
  );
}

Future emailAlreadyInUsePopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'email_already_in_use_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'email_already_in_use_message'),
    ),
    actions: <Widget>[
      RoundedButton(
        width: screenWidthByScalar(context, 1.0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        text: translate(context, 'okay'),
      )
    ],
  );
}

Future invalidEmailAndPasswordCombinationPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'invalid_email_and_password_combination_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'invalid_email_and_password_combination_message'),
    ),
    actions: <Widget>[
      RoundedButton(
        width: screenWidthByScalar(context, 1.0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        text: translate(context, 'okay'),
      )
    ],
  );
}

Future tooManyRequestsPopup(BuildContext context) {
  // TODO: translate
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      'Oops! You made too many requests',
      style: robotoTextStyle(),
    ),
    content: Text('You have to wait for a while to do this process.'),
    actions: <Widget>[
      RoundedButton(
        width: screenWidthByScalar(context, 1.0),
        onPressed: () {
          Navigator.of(context).pop();
        },
        text: translate(context, 'okay'),
      )
    ],
  );
}
