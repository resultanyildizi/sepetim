import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future changePasswordPopup(
  BuildContext context,
  AccountTransactionsBloc bloc,
) {
  final TextEditingController _textController = TextEditingController();
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(
      translate(context, 'change_your_password'),
      style: Theme.of(context).textTheme.headline3,
    ),
    content: BlocBuilder<AccountTransactionsBloc, AccountTransactionsState>(
      cubit: bloc,
      buildWhen: (p, c) => p.password != c.password,
      builder: (context, state) => Container(
        height: 100.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(translate(context, 'enter_new_password')),
            const SizedBox(height: 5.0),
            Form(
              autovalidate: state.showErrorMessages,
              child: TextFormField(
                controller: _textController,
                decoration: InputDecoration(
                    labelText: translate(context, 'new_password')),
                autofocus: true,
                obscureText: true,
                onChanged: (value) {
                  bloc.add(
                    AccountTransactionsEvent.passwordChanged(
                      value.trim(),
                    ),
                  );
                },
                validator: (_) => bloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    weakPassword: (_) => translate(context, 'weak_password'),
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
            ),
            const Spacer(),
            if (state.isProgressing) ...[
              LinearProgressIndicator(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                minHeight: 1,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(sepetimLightYellow),
              ),
            ],
          ],
        ),
      ),
    ),
    actions: [
      RoundedButton(
          text: translate(context, 'cancel'),
          onPressed: () => ExtendedNavigator.of(context).pop()),
      RoundedButton(
        text: 'Confirm',
        onPressed: () => context
            .bloc<AccountTransactionsBloc>()
            .add(const AccountTransactionsEvent.passwordUpdated()),
      ),
    ],
  );
}

Future verifyPasswordPopup(
  BuildContext context,
  TextEditingController _textController,
) {
  String validatorText;

  return actionPopup(context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      barrierDismissible: true,
      title: Text(
        translate(context, 'verify_your_password'),
        style: Theme.of(context).textTheme.headline3,
      ),
      content: BlocConsumer<AccountTransactionsBloc, AccountTransactionsState>(
        cubit: context.bloc<AccountTransactionsBloc>(),
        listener: (context, state) {
          state.authFailureOrUnitOption.fold(
            () => null,
            (either) {
              either.fold(
                (f) {
                  f.maybeMap(
                    wrongPassword: (_) =>
                        validatorText = translate(context, 'wrong_password'),
                    orElse: () => null,
                  );
                },
                (_) {},
              );
            },
          );
        },
        builder: (context, state) {
          return Container(
            height: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(translate(context, 'enter_current_password')),
                const SizedBox(height: 5.0),
                Form(
                  autovalidate: state.showErrorMessages,
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                        labelText: translate(context, 'current_password')),
                    autofocus: true,
                    obscureText: true,
                    validator: (_) => validatorText,
                  ),
                ),
                const Spacer(),
                if (state.isProgressing) ...[
                  LinearProgressIndicator(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    minHeight: 1,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(sepetimLightYellow),
                  ),
                ],
              ],
            ),
          );
        },
      ),
      actions: [
        RoundedButton(
          onPressed: () {
            ExtendedNavigator.of(context).pop();
          },
          text: translate(context, 'cancel'),
        ),
        RoundedButton(
          onPressed: () {
            if (_textController.text.trim() != "") {
              context.bloc<AccountTransactionsBloc>().add(
                  AccountTransactionsEvent.currentPasswordVerified(
                      _textController.text.trim()));
            }
          },
          text: translate(context, 'verify'),
        )
      ]);
}

Future successfulPopup(BuildContext context) {
  return actionPopup(
    context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(
          Icons.check_box,
          color: Colors.lightGreen,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          translate(context, 'successful'),
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    ),
    content: Text(
      translate(context, 'password_changed_successfully'),
      style: Theme.of(context).textTheme.bodyText1,
    ),
    actions: [
      RoundedButton(
        text: translate(context, 'okay'),
        onPressed: () => ExtendedNavigator.of(context).popUntil(
          (route) => route.settings.name == Routes.applicationContentPage,
        ),
      )
    ],
  );
}
