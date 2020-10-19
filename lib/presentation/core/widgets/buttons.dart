import 'package:flutter/material.dart';

import 'package:Sepetim/predefined_variables/colors.dart' as app_colors;
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';

class RoundedButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final void Function() onPressed;

  const RoundedButton({
    Key key,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        color: backgroundColor ?? app_colors.sepetimYellow,
        elevation: 4.0,
        onPressed: onPressed,
        child: text != null
            ? Text(
                text,
                style: TextStyle(
                  color: textColor ??
                      Theme.of(context).buttonTheme.colorScheme.secondary,
                  shadows: [
                    Shadow(
                      color: Theme.of(context)
                          .buttonTheme
                          .colorScheme
                          .primary
                          .withOpacity(0.7),
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

enum ErrorOutlineButtonState { normal, loading, done }

class ErrorOutlineButton extends StatelessWidget {
  final Function() onPressed;
  final ErrorOutlineButtonState state;
  final Color color;
  const ErrorOutlineButton({
    Key key,
    @required this.onPressed,
    this.state = ErrorOutlineButtonState.normal,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.white,
      borderSide: BorderSide(color: color),
      highlightedBorderColor: color,
      onPressed: state == ErrorOutlineButtonState.normal ? onPressed : () {},
      textColor: color,
      child: content(context),
    );
  }

  Widget content(BuildContext context) {
    switch (state) {
      case ErrorOutlineButtonState.loading:
        {
          return SizedBox(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          );
        }
      case ErrorOutlineButtonState.done:
        {
          return const Icon(Icons.check);
        }
      default:
        return Text(
          translate(context, 'report_issue'),
          style: robotoTextStyle(color: color),
        );
    }
  }
}

class FlatRectangleButton extends StatelessWidget {
  final Function() onPressed;
  final Widget child;
  const FlatRectangleButton({
    Key key,
    @required this.onPressed,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: onPressed,
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Theme.of(context).iconTheme.color),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              child,
              Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).iconTheme.color,
              )
            ],
          ),
        ),
      ),
    );
  }
}
