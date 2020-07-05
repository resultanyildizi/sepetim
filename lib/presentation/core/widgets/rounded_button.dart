import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;

class RoundedButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final void Function() onPressed;

  const RoundedButton({
    Key key,
    this.width,
    this.height,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        color: app_colors.sepetimYellow,
        elevation: 4.0,
        onPressed: onPressed,
        child: text != null
            ? Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: app_colors.sepetimGrey.withOpacity(0.7),
                      blurRadius: 8.0,
                    )
                  ],
                ),
              )
            : const Text(''),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final IconData iconData;
  final void Function() onPressed;

  const RoundedIconButton({
    Key key,
    this.width,
    this.height,
    @required this.text,
    @required this.iconData,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
          color: app_colors.sepetimYellow,
          elevation: 4.0,
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                iconData,
                color: app_colors.sepetimGrey,
              ),
              Text(
                text,
                style: didactGothicTextStyle(bold: true),
              ),
            ],
          )),
    );
  }
}
