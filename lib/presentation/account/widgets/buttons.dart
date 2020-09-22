import 'package:Sepetim/application/auth/account_transactions/account_transactions_bloc.dart';
import 'package:Sepetim/application/auth/auth/auth_bloc_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/account/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

FlatRectangleButton signOutButton(BuildContext context) {
  return FlatRectangleButton(
    onPressed: () {
      context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
    },
    color: Colors.grey,
    child: Text(
      translate(context, 'sign_out'),
      style:
          didactGothicTextStyle(fontSize: 16.0, bold: true, color: Colors.grey),
    ),
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
    color: Colors.grey,
    child: Text(
      translate(context, 'change_password'),
      style:
          didactGothicTextStyle(fontSize: 16.0, bold: true, color: Colors.grey),
    ),
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
    color: Colors.grey,
    child: Text(
      translate(context, 'delete_account'),
      style:
          didactGothicTextStyle(fontSize: 16.0, bold: true, color: Colors.grey),
    ),
  );
}
