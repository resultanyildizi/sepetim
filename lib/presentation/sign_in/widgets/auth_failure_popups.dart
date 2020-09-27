import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';

Future networkExceptionPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(
      translate(context, 'server_error_title'),
      style: Theme.of(context).textTheme.headline3,
    ),
    content: Text(
      translate(context, 'server_error_message'),
      style: Theme.of(context).textTheme.bodyText1,
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
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'unexpected_server_error_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'unexpected_server_error_message'),
        style: Theme.of(context).textTheme.bodyText1),
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
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'email_already_in_use_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'email_already_in_use_message'),
        style: Theme.of(context).textTheme.bodyText1),
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
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(
        translate(context, 'invalid_email_and_password_combination_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(
        translate(context, 'invalid_email_and_password_combination_message'),
        style: Theme.of(context).textTheme.bodyText1),
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
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'too_many_requests_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'too_many_requests_message'),
        style: Theme.of(context).textTheme.bodyText1),
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

Future userNotFoundPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'user_not_found_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'user_not_found_message'),
        style: Theme.of(context).textTheme.bodyText1),
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

Future userNotUsingEmailProviderPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'user_not_using_email_provider_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'user_not_using_email_provider_message'),
        style: Theme.of(context).textTheme.bodyText1),
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
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'account_already_exists_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'account_already_exists_message'),
        style: Theme.of(context).textTheme.bodyText1),
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

Future notRegisteredWithGooglePopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'not_registered_with_google_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'not_registered_with_google_message'),
        style: Theme.of(context).textTheme.bodyText1),
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

Future invalidCredentialPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'invalid_credential_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'invalid_credential_message'),
        style: Theme.of(context).textTheme.bodyText1),
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
