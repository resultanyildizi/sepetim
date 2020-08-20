import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import 'package:Sepetim/domain/item/item.dart';

class ItemHorizontalListView extends StatelessWidget {
  final KtList<Item> items;

  const ItemHorizontalListView({
    Key key,
    @required this.items,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CircularItemView(item: items[index]);
      },
      itemCount: items.size,
      scrollDirection: Axis.horizontal,
    );
  }
}

class CircularItemView extends StatelessWidget {
  final Item item;
  const CircularItemView({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 8.0),
      child: item.failureOption.fold(
        () => Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: CachedNetworkImage(
                imageUrl: item.imageUrls
                    .getOrCrash()[item.selectedIndex.getOrCrash()]
                    .getOrCrash(),
                errorWidget: (context, url, error) => const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/default.png'),
                    radius: 28.0),
                placeholder: (context, url) => const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28.0,
                  child: SizedBox(
                    height: 10.0,
                    width: 10.0,
                    child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFFEEEEEE)),
                      strokeWidth: 2.0,
                    ),
                  ),
                ),
                imageBuilder: (context, image) =>
                    CircleAvatar(backgroundImage: image, radius: 28),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item.title.getOrCrash().length <= 12
                  ? item.title.getOrCrash()
                  : '${item.title.getOrCrash().substring(0, 10)}...',
              style: robotoTextStyle(fontSize: 12),
            ),
          ],
        ),
        (failure) => Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const CircleAvatar(
                backgroundColor: sepetimSmoothRed,
                radius: 28.0,
                child: Icon(
                  Icons.error_outline,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              translate(context, 'oops_error'),
              style: robotoTextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
