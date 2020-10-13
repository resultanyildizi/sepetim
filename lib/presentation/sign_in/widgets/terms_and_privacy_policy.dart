import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

RichText termsAndPrivacyPolicyWidgetEn(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.subtitle1,
      children: [
        TextSpan(
          text: translate(context, 'by_signing_up'),
        ),
        TextSpan(
          text: translate(context, 'you_agree'),
        ),
        TextSpan(
          text: translate(
            context,
            'terms_of_service',
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () =>
                ExtendedNavigator.of(context).push(Routes.termsOfServicePage),
          style: const TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: translate(context, 'and'),
        ),
        TextSpan(
          text: translate(
            context,
            'privacy_policy',
          ),
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () =>
                ExtendedNavigator.of(context).push(Routes.privacyPolicyPage),
        ),
        const TextSpan(text: '.'),
      ],
    ),
  );
}

RichText termsAndPrivacyPolicyWidgetTr(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.subtitle1,
      children: [
        TextSpan(
          text: translate(context, 'by_signing_up'),
        ),
        TextSpan(
          text: translate(
            context,
            'terms_of_service',
          ),
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () =>
                ExtendedNavigator.of(context).push(Routes.termsOfServicePage),
        ),
        TextSpan(
          text: translate(context, 'and'),
        ),
        TextSpan(
          text: translate(
            context,
            'privacy_policy',
          ),
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () =>
                ExtendedNavigator.of(context).push(Routes.privacyPolicyPage),
        ),
        TextSpan(
          text: translate(context, 'you_agree'),
        ),
        const TextSpan(text: '.'),
      ],
    ),
  );
}
