import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:Sepetim/predefined_variables/images.dart';

class BoxesImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: screenHeightByScalar(context,
                scalarSmall: 0.4, scalarMedium: 0.4, scalarBig: 0.4),
            child: boxesImage,
          ),
          Text(translate(context, 'categories_are_empty')),
        ],
      ),
    );
  }
}
