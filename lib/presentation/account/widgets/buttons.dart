import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/account/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

FlatRectangleButton signOutButton(BuildContext context) {
  return FlatRectangleButton(
    onPressed: () {
      context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
    },
    child: Text(translate(context, 'sign_out'),
        style: Theme.of(context).textTheme.bodyText2),
  );
}

FlatRectangleButton changePasswordButton(
  BuildContext context,
) {
  final _textController = TextEditingController();

  return FlatRectangleButton(
    onPressed: () {
      context
          .bloc<AccountTransactionsBloc>()
          .add(const AccountTransactionsEvent.stateReset());
      _textController.text = "";
      verifyPasswordPopup(context, _textController);
    },
    child: Text(translate(context, 'change_password'),
        style: Theme.of(context).textTheme.bodyText2),
  );
}

FlatRectangleButton deleteAccountButton(BuildContext context) {
  return FlatRectangleButton(
    onPressed: () {
      deletePopup(
        context,
        title: translate(context, 'delete_account_title'),
        message: translate(context, 'delete_account_message'),
        action: () {
          context
              .bloc<AccountTransactionsBloc>()
              .add(const AccountTransactionsEvent.accountDeleted());
        },
      );
    },
    child: Text(translate(context, 'delete_account'),
        style: Theme.of(context).textTheme.bodyText2),
  );
}

FlatRectangleButton registerButton(BuildContext context) {
  return FlatRectangleButton(
    onPressed: () {
      ExtendedNavigator.of(context).push(Routes.linkAccountPage);
    },
    child: Text(translate(context, 'register'),
        style: Theme.of(context).textTheme.bodyText2),
  );
}
