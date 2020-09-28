import 'package:Sepetim/application/dynamic_links/dynamic_links_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget contactUsButton(
  BuildContext context, {
  @required Function() onPressed,
}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    child: Text(
      translate(context, 'contact_us'),
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}

Widget termsOfServiceButton(
  BuildContext context, {
  @required Function() onPressed,
}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    child: Text(
      translate(context, 'terms_of_service_btn'),
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}

Widget privacyPolicyButton(
  BuildContext context, {
  @required Function() onPressed,
}) {
  return FlatRectangleButton(
    onPressed: onPressed,
    child: Text(
      translate(context, 'privacy_policy_btn'),
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}

Widget themesButton(
  BuildContext context,
) {
  return FlatRectangleButton(
    onPressed: () => ExtendedNavigator.of(context).push(Routes.themesPage),
    child: Text(
      translate(context, 'themes'),
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}

Widget shareAppButton(
  BuildContext context,
) {
  return FlatRectangleButton(
    onPressed: () async {
      final linkUrl = translate(context, 'dynamic_link');
      if (linkUrl != null && linkUrl != '') {
        final RenderBox box = context.findAncestorRenderObjectOfType();
        final subject = translate(context, 'checkout_sepetim');
        final dynamicLinkUrl = linkUrl;

        await Share.share('$subject $dynamicLinkUrl',
            subject: subject,
            sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
      }
    },
    child: Text(
      translate(context, 'share_app'),
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}
