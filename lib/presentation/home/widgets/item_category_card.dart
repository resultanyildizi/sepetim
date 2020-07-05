import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:Sepetim/domain/item_category/item_category.dart';

class ItemCategoryCard extends StatelessWidget {
  final ItemCategory category;
  const ItemCategoryCard({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageProvider<dynamic> image;
    try {
      image = NetworkImage(category.coverImageUrl.getOrCrash());
    } on NetworkImageLoadException catch (_) {
      image = const AssetImage('assets/images/default.png');
    }

    return Card(
      color: category.color.getOrCrash(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              category.title.getOrCrash(),
              style: didactGothicTextStyle(bold: true),
            ),
            Divider(
              color: sepetimGrey,
              height: 5.0,
              thickness: 1.5,
              indent: 10.0,
              endIndent: 10.0,
            ),
            const SizedBox(
              height: 6.0,
            ),
            ClipOval(
              child: Image(
                image: image,
                width: screenWidthByScalar(context, 0.22),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Divider(
              color: sepetimGrey,
              height: 5.0,
              thickness: 1.5,
              indent: 10.0,
              endIndent: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
