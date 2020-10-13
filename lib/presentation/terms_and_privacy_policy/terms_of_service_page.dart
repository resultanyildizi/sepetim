import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/terms_and_privacy_policy/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsOfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sepetim',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: DefaultPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (AppLocalizations.of(context).locale.languageCode == "tr") ...[
                getInfoBox(context),
                const SizedBox(height: 16.0),
              ],
              ...getTitleWithKey(
                  context, 'tc_section/terms_and_conditions_title'),
              ...getParagraphWithKey(context, 'tc_section/updated_at'),
              ...getTitleWithKey(context, 'tc_section/general_terms_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/general_terms_paragraph'),
              ...getTitleWithKey(context, 'tc_section/license_title'),
              ...getParagraphWithKey(context, 'tc_section/license_paragraph'),
              ...getTitleWithKey(context, 'tc_section/restrictions_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/restrictions_paragraph'),
              ...getTitleWithKey(context, 'tc_section/your_consent_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/your_consent_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/links_to_other_websites_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/links_to_other_websites_paragraph'),
              ...getTitleWithKey(context,
                  'tc_section/changes_to_our_terms_and_conditions_title'),
              ...getParagraphWithKey(context,
                  'tc_section/changes_to_our_terms_and_conditions_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/modifications_to_our_app_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/modifications_to_our_app_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/updates_to_our_app_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/updates_to_our_app_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/third_party_services_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/third_party_services_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/term_and_termination_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/term_and_termination_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/copyright_infringement_notice_title'),
              ...getParagraphWithKey(context,
                  'tc_section/copyright_infringement_notice_paragraph'),
              ...getTitleWithKey(context, 'tc_section/indemnification_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/indemnification_paragraph'),
              ...getTitleWithKey(context, 'tc_section/no_warranties_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/no_warranties_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/limitation_of_liability_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/limitation_of_liability_paragraph'),
              ...getTitleWithKey(context, 'tc_section/severability_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/severability_paragraph'),
              ...getTitleWithKey(context, 'tc_section/waiver_title'),
              ...getParagraphWithKey(context, 'tc_section/waiver_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/amendments_to_this_agreement_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/amendments_to_this_agreement_paragraph'),
              ...getTitleWithKey(context, 'tc_section/entire_agreement_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/entire_agreement_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/updates_to_our_terms_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/updates_to_our_terms_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/intellectual_property_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/intellectual_property_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/agreement_to_arbitrate_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/agreement_to_arbitrate_paragraph'),
              ...getTitleWithKey(context, 'tc_section/notice_of_dispute_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/notice_of_dispute_paragraph'),
              ...getTitleWithKey(
                  context, 'tc_section/binding_arbitration_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/binding_arbitration_paragraph'),
              ...getTitleWithKey(context, 'tc_section/disclaimer_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/disclaimer_paragraph'),
              ...getTitleWithKey(context, 'tc_section/contact_us_title'),
              ...getParagraphWithKey(
                  context, 'tc_section/contact_us_paragraph'),
              Text.rich(
                TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(text: translate(context, 'tc_section/via_email')),
                    TextSpan(
                        text: translate(context, 'contact_email'),
                        style: robotoTextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            await launch(
                                "mailto:${translate(context, 'contact_email')}");
                          }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
