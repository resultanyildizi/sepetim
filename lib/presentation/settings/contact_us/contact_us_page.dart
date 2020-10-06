import 'package:Sepetim/application/contact_us/contact_us_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/settings/contact_us/widgets/email_message_text_field.dart';
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
          listener: (context, state) {},
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
