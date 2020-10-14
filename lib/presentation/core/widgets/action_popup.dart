import 'package:flutter/material.dart';

Future actionPopup(
  BuildContext context, {
  Widget title,
  Widget content,
  Color backgroundColor,
  List<Widget> actions,
  bool barrierDismissible,
}) {
  return showDialog(
    context: context,
    barrierDismissible: barrierDismissible ?? true,
    builder: (BuildContext context) => WillPopScope(
      onWillPop: () async {
        return barrierDismissible ?? true;
      },
      child: AlertDialog(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: title,
        content: content,
        actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        actions: actions,
      ),
    ),
  );
}
