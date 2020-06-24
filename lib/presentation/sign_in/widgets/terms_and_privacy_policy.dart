import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';

RichText termsAndPrivacyPolicyWidgetEn(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: didactGothicTextStyle(
        fontSize: 14.0,
        bold: false,
      ),
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
          style: TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: translate(context, 'and'),
        ),
        TextSpan(
          text: translate(
            context,
            'privacy_policy',
          ),
          style: TextStyle(color: Colors.blue),
        ),
        const TextSpan(text: '.'),
      ],
    ),
  );
}

RichText termsAndPrivacyPolicyWidgetTr(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: didactGothicTextStyle(
        fontSize: 14.0,
        bold: false,
      ),
      children: [
        TextSpan(
          text: translate(context, 'by_signing_up'),
        ),
        TextSpan(
          text: translate(
            context,
            'terms_of_service',
          ),
          style: TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: translate(context, 'and'),
        ),
        TextSpan(
          text: translate(
            context,
            'privacy_policy',
          ),
          style: TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: translate(context, 'you_agree'),
        ),
        const TextSpan(text: '.'),
      ],
    ),
  );
}
