import 'package:Sepetim/application/contact_us/contact_us_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/settings/contact_us/widgets/email_message_text_field.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactUsBloc>(
      create: (context) => getIt<ContactUsBloc>(),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: Theme.of(context).appBarTheme.textTheme.headline1,
          ),
        ),
        body: BlocConsumer<ContactUsBloc, ContactUsState>(
          listener: (context, state) {
            state.contactUsFailureOrUnitOption.fold(
              () {},
              (either) => either.fold(
                (failure) => failure.map(
                  networkException: (_) => networkExceptionPopup(context),
                  unexpectedServerError: (_) => serverErrorPopup(context),
                ),
                (_) {
                  ExtendedNavigator.of(context).pop();
                  Flushbar(
                    flushbarPosition: FlushbarPosition.TOP,
                    flushbarStyle: FlushbarStyle.FLOATING,
                    backgroundColor: sepetimGrey,
                    borderRadius: 5,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    duration: const Duration(seconds: 2),
                    isDismissible: false,
                    icon: const Icon(
                      Icons.check_circle,
                      color: sepetimYellow,
                    ),
                    messageText: Text(
                      translate(context, "message_sent_successfully"),
                      style: didactGothicTextStyle(
                          bold: true, fontSize: 12, color: sepetimYellow),
                    ),
                  ).show(context);
                },
              ),
            );
          },
          builder: (context, state) {
            return DefaultPadding(
              child: Form(
                autovalidate: state.showErrorMessages,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      translate(context, 'send_a_message'),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    EmailMessageTextField(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          if (state.isSending) ...[
                            SmallCircularProgressIndicator()
                          ],
                          const DividerDefault(),
                          RoundedButton(
                            width: screenWidthByScalar(context, 1.0),
                            onPressed: () {
                              context
                                  .bloc<ContactUsBloc>()
                                  .add(const ContactUsEvent.emailSent());
                            },
                            text: translate(context, 'send'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
