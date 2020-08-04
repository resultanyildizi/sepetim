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
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CachedNetworkImage(
              imageUrl: item.imageUrls
                  .getOrCrash()[item.selectedIndex.getOrCrash()]
                  .getOrCrash(),
              placeholder: (context, url) =>
                  CircleAvatar(backgroundColor: Colors.white, radius: 28),
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
          )
        ],
      ),
    );
  }
}
