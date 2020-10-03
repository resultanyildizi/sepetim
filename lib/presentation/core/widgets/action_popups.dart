import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Future deletePopup(
  BuildContext context, {
  @required String title,
  @required String message,
  @required Function() action,
}) async {
  return actionPopup(
    context,
    backgroundColor: Colors.redAccent,
    title: Text(title,
        style: Theme.of(context)
            .textTheme
            .headline3
            .copyWith(color: Colors.black)),
    content: Text(
      message,
      style: didactGothicTextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    ),
    actions: [
      RoundedButton(
        text: translate(context, 'cancel'),
        onPressed: () {
          ExtendedNavigator.of(context).pop();
        },
        backgroundColor: sepetimGrey,
        textColor: Colors.white,
      ),
      RoundedButton(
        text: translate(context, 'delete'),
        onPressed: () {
          action();
          ExtendedNavigator.of(context).pop();
        },
        backgroundColor: sepetimGrey,
        textColor: Colors.white,
      ),
    ],
  );
}

Future insufficientPermissionPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(translate(context, 'insufficient_permission_title'),
        style: Theme.of(context).textTheme.headline3),
    content: Text(translate(context, 'insufficient_permission_message'),
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
