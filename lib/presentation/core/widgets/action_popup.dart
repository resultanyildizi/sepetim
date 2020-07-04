import 'package:flutter/material.dart';

Future actionPopup(
  BuildContext context, {
  Widget title,
  Widget content,
  List<Widget> actions,
}) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: title,
      content: content,
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      actions: actions,
    ),
  );
}
