import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/item_group/overview/widgets/action_buttons.dart';
import 'package:flutter/material.dart';

class ItemGroupCard extends StatelessWidget {
  final UniqueId categoryId;
  final ItemGroup group;
  const ItemGroupCard({Key key, this.categoryId, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeightByScalar(context,
            scalarSmall: 0.21, scalarMedium: 0.18, scalarBig: 0.16),
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 24),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(70),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    group.title.getOrCrash().length <= 30
                        ? group.title.getOrCrash()
                        : '${group.title.getOrCrash().substring(0, 27)}...',
                    style: didactGothicTextStyle(bold: true),
                  ),
                  Expanded(
                    child: ItemGroupActionButtons(
                      categoryId: categoryId,
                      group: group,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
