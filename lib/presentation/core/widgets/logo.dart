import 'package:Sepetim/application/theme/theme_bloc.dart';
import 'package:flutter/material.dart';

import 'package:Sepetim/predefined_variables/images.dart' as app_images;
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoCenter extends StatelessWidget {
  final double height;
  const LogoCenter({
    Key key,
    @required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: Center(
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return Container(
              height: height,
              child: state.theme == AppTheme.light
                  ? app_images.logoGrey
                  : app_images.logoWhite,
            );
          },
        ),
      ),
    );
  }
}
