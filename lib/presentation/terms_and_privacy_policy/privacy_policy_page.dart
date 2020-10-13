import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/terms_and_privacy_policy/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyPage extends StatelessWidget {
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
              ...getTitleWithKey(context, 'pp_section/privacy_policy_title'),
              ...getParagraphWithKey(context, 'pp_section/updated_at'),
              ...getParagraphWithKey(
                  context, 'pp_section/privacy_policy_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/what_information_do_we_collect_title'),
              ...getParagraphWithKey(context,
                  'pp_section/what_information_do_we_collect_paragraph'),
              ...getTitleWithKey(context,
                  'pp_section/user_information_from_third_parties_title'),
              ...getParagraphWithKey(context,
                  'pp_section/user_information_from_third_parties_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/do_we_share_information_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/do_we_share_information_paragraph'),
              ...getTitleWithKey(context,
                  'pp_section/where_and_when_information_collected_title'),
              ...getParagraphWithKey(context,
                  'pp_section/where_and_when_information_collected_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/how_do_we_use_information_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/how_do_we_use_information_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/how_long_do_we_keep_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/how_long_do_we_keep_paragraph'),
              ...getTitleWithKey(context, 'pp_section/how_do_we_protect_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/how_do_we_protect_paragraph'),
              ...getTitleWithKey(context,
                  'pp_section/could_my_information_be_transferred_title'),
              ...getParagraphWithKey(context,
                  'pp_section/could_my_information_be_transferred_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/can_i_update_my_information_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/can_i_update_my_information_paragraph'),
              ...getTitleWithKey(context, 'pp_section/affiliates_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/affiliates_paragraph'),
              ...getTitleWithKey(context, 'pp_section/governing_law_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/governing_law_paragraph'),
              ...getTitleWithKey(context, 'pp_section/your_consent_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/your_consent_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/links_to_other_websites_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/links_to_other_websites_paragraph'),
              ...getTitleWithKey(context, 'pp_section/kids_privacy_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/kids_privacy_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/changes_to_our_privacy_policy_title'),
              ...getParagraphWithKey(context,
                  'pp_section/changes_to_our_privacy_policy_paragraph'),
              ...getTitleWithKey(
                  context, 'pp_section/third_party_services_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/third_party_services_paragraph'),
              ...getTitleWithKey(context, 'pp_section/contact_us_title'),
              ...getParagraphWithKey(
                  context, 'pp_section/contact_us_paragraph'),
              Text.rich(
                TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(text: translate(context, 'pp_section/via_email')),
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
