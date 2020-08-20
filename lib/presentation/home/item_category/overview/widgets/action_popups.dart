import 'package:Sepetim/application/item_category/actor/item_category_actor_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future deletePopup(
  BuildContext context, {
  @required ItemCategory category,
}) async {
  return actionPopup(
    context,
    backgroundColor: Colors.redAccent,
    title: Text(
      translate(context, 'delete_category_title') +
          ' ' +
          category.title.getOrCrash(),
      style: robotoTextStyle(
        color: Colors.black,
        fontSize: 22.0,
      ),
    ),
    content: Text(
      translate(context, 'delete_category_message'),
      style: didactGothicTextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    ),
    actions: [
      RoundedButton(
        text: translate(context, 'cancel'),
        onPressed: () {
          ExtendedNavigator.of(context).pop();
        },
        backgroundColor: sepetimGrey,
      ),
      RoundedButton(
        text: translate(context, 'delete'),
        onPressed: () {
          context
              .bloc<ItemCategoryActorBloc>()
              .add(ItemCategoryActorEvent.deleted(category));

          ExtendedNavigator.of(context).pop();
        },
        backgroundColor: sepetimGrey,
      ),
    ],
  );
}
