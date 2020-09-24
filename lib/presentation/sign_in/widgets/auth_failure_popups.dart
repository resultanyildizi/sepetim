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
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'too_many_requests_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'too_many_requests_message'),
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

Future userNotFound(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'user_not_found_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'user_not_found_message'),
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

Future userNotUsingEmailProvider(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'user_not_using_email_provider_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'user_not_using_email_provider_message'),
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

Future accountAlreadyExistsPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'account_already_exists_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'account_already_exists_message'),
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

Future notRegisteredWithGoogle(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Colors.white,
    title: Text(
      translate(context, 'not_registered_with_google_title'),
      style: robotoTextStyle(),
    ),
    content: Text(
      translate(context, 'not_registered_with_google_message'),
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
