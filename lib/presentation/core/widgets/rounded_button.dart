import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;
import 'package:flutter/material.dart';

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
