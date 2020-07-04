import 'package:flutter/material.dart';

class DefaultPadding extends StatelessWidget {
  final Widget child;
  const DefaultPadding({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 16.0),
      child: child,
    );
  }
}
