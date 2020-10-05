import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/application/auth/reset_password_form/reset_password_form_bloc.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ResetPasswordFormBloc>(),
      child: BlocConsumer<ResetPasswordFormBloc, ResetPasswordFormState>(
        listener: (context, state) {
          state.authFailureOrUnitOption.fold(
            () => () {},
            (either) => either.fold(
              (failure) => failure.maybeMap(
                  serverError: (_) => serverErrorPopup(context),
                  networkException: (_) => networkExceptionPopup(context),
                  userNotFound: (_) => userNotFoundPopup(context),
                  userNotUsingEmailProvider: (_) =>
                      userNotUsingEmailProviderPopup(context),
                  orElse: () {}),
              (_) => () {},
            ),
          );
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              title: Text(
                translate(context, 'reset_password'),
                style: Theme.of(context).appBarTheme.textTheme.headline1,
              ),
            ),
            body: DefaultPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(translate(context, 'enter_email_to_get_link'),
                      style: Theme.of(context).textTheme.bodyText1),
                  const SizedBox(height: 6),
                  Form(
                    autovalidate: state.showErrorMessages,
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          style: Theme.of(context).textTheme.subtitle2,
                          cursorColor: sepetimGrey,
                          decoration: InputDecoration(
                              labelText: translate(context, 'email')),
                          onChanged: (value) {
                            context
                                .bloc<ResetPasswordFormBloc>()
                                .add(ResetPasswordFormEvent.emailChanged(
                                  emailAddress: value.trim(),
                                ));
                          },
                          validator: (_) => context
                              .bloc<ResetPasswordFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) =>
                                      translate(context, 'invalid_email'),
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        if (!state.isSending && !state.isSuccessful) ...[
                          RoundedButton(
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                            text: translate(context, 'send_link'),
                            onPressed: () {
                              if (!state.isSending) {
                                context
                                    .bloc<ResetPasswordFormBloc>()
                                    .add(ResetPasswordFormEvent.resetLinkSent(
                                      languageCode: AppLocalizations.of(context)
                                          .locale
                                          .languageCode,
                                    ));
                              }
                            },
                          )
                        ],
                        if (state.isSent && state.isSuccessful) ...[
                          Container(
                            padding: const EdgeInsets.all(8),
                            constraints: BoxConstraints(
                                maxWidth: screenWidthByScalar(context, 1)),
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ListTile(
                              leading: const Icon(
                                Icons.check_circle,
                                color: sepetimGrey,
                                size: 40,
                              ),
                              title: Text(
                                translate(context, "reset_password_link_sent"),
                                style: didactGothicTextStyle(bold: true),
                              ),
                            ),
                          )
                        ],
                        if (state.isSending) ...[
                          const SizedBox(height: 16),
                          SmallCircularProgressIndicator(),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
