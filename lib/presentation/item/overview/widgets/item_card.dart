import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final ItemCategory category;
  final ItemGroup group;
  const ItemCard({
    Key key,
    @required this.item,
    @required this.category,
    @required this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.bloc<ItemFormBloc>().add(ItemFormEvent.initialized(some(item)));
        ExtendedNavigator.of(context).pushNamed(
          Routes.itemPage,
          arguments: ItemPageArguments(
            formBloc: context.bloc<ItemFormBloc>(),
            category: category,
            group: group,
          ),
        );
      },
      child: Container(
        height: 160,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: sepetimLightGrey,
        ))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            coverImage(),
            informations(context),
            isFavorite(),
          ],
        ),
      ),
    );
  }

  Widget isFavorite() {
    return Padding(
      padding: const EdgeInsets.only(right: 22.0),
      child: Container(
        width: 20,
        child: item.isFavorite
            ? Icon(
                Icons.favorite,
                color: Colors.redAccent,
              )
            : Icon(
                Icons.favorite_border,
                color: sepetimLightGrey,
              ),
      ),
    );
  }

  Widget informations(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 4.0,
            ),
            Text(
              item.title.getOrCrash().length <= 20
                  ? item.title.getOrCrash()
                  : '${item.title.getOrCrash().substring(0, 20)}...',
              style: robotoTextStyle(bold: true, fontSize: 18.0),
            ),
            Text(
              '${category.title.getOrCrash()}, ${group.title.getOrCrash()}',
              style: didactGothicTextStyle(),
            ),
            Text(
              '${translate(context, 'price')}: ${item.price.getOrCrash().toString()}₺',
              style: didactGothicTextStyle(),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '${translate(context, 'status')}: ${item.status.getOrCrash()}',
                    style: didactGothicTextStyle(),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget coverImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0),
      child: Container(
        width: 90,
        height: 140,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => Image.asset(
            'assets/images/default.png',
            width: 90,
            height: 160,
            fit: BoxFit.cover,
          ),
          imageUrl: item.imageUrls
              .getOrCrash()[item.selectedIndex.getOrCrash()]
              .getOrCrash(),
          width: 90,
          height: 160,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
