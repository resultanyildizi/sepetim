import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/logo.dart';
import 'package:Sepetim/presentation/settings/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sepetim',
          style: robotoTextStyle(bold: true),
        ),
      ),
      body: DefaultPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeightByScalar(
                context,
                scalarSmall: 0.02,
                scalarMedium: 0.03,
                scalarBig: 0.03,
              ),
            ),
            LogoCenter(
              height: screenHeightByScalar(
                context,
                scalarSmall: 0.12,
                scalarMedium: 0.12,
                scalarBig: 0.14,
              ),
            ),
            SizedBox(
              height: screenHeightByScalar(
                context,
                scalarSmall: 0.02,
                scalarMedium: 0.04,
                scalarBig: 0.04,
              ),
            ),
            Center(
              child: Text(
                'Sepetim - 1.0.0',
                style: robotoTextStyle(),
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              translate(context, 'settings'),
              style: robotoTextStyle(fontSize: 24.0, bold: true),
            ),
            const SizedBox(
              height: 15.0,
            ),
            themesButton(onPressed: () {}),
            const SizedBox(
              height: 15.0,
            ),
            contactUsButton(onPressed: () {}),
            const SizedBox(
              height: 15.0,
            ),
            shareAppButton(onPressed: () {}),
            const SizedBox(
              height: 15.0,
            ),
            termsOfServiceButton(onPressed: () {}),
            const SizedBox(
              height: 15.0,
            ),
            privacyPolicyButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
