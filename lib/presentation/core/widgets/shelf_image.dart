import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/images.dart';
import 'package:flutter/material.dart';

class ShelfImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10.0),
            height: screenHeightByScalar(
              context,
              scalarSmall: 0.4,
              scalarMedium: 0.4,
              scalarBig: 0.4,
            ),
            child: shelfImage,
          ),
          Text(translate(context, 'groups_are_empty')),
        ],
      ),
    );
  }
}
