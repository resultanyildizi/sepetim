import 'package:Sepetim/application/contact_us/contact_us_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailMessageTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.text,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
        labelText: translate(context, 'enter_your_message'),
        counterStyle: didactGothicTextStyle(),
      ),
      minLines: 1,
      maxLines: MediaQuery.of(context).size.height < 600
          ? 6
          : MediaQuery.of(context).size.height < 800 ? 8 : 10,
      onChanged: (value) {
        context
            .bloc<ContactUsBloc>()
            .add(ContactUsEvent.emailMessageChanged(value.trim()));
      },
      validator: (value) => context
          .bloc<ContactUsBloc>()
          .state
          .message
          .value
          .fold(
            (failure) => failure.maybeMap(
              tooShortMessage: (_) => translate(context, 'too_short_message'),
              empty: (_) => translate(context, 'empty_message'),
              orElse: () => null,
            ),
            (_) => null,
          ),
    );
  }
}
