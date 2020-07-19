import 'package:Sepetim/application/item_group/actor/item_group_actor_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemGroupActionButtons extends StatelessWidget {
  final ItemGroup group;
  final UniqueId categoryId;
  const ItemGroupActionButtons({Key key, this.group, this.categoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ClipOval(
          child: Material(
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.white,
              onTap: () {
                deletePopup(
                  context,
                  title:
                      '${translate(context, 'delete_group_title')} ${group.title.getOrCrash()}',
                  message: translate(context, 'delete_group_message'),
                  action: () => context.bloc<ItemGroupActorBloc>().add(
                        ItemGroupActorEvent.deleted(categoryId, group),
                      ),
                );
              },
              child: SizedBox(
                  width: 22,
                  height: 22,
                  child: Icon(
                    Icons.delete_forever,
                    size: 18,
                    color: sepetimGrey,
                  )),
            ),
          ),
        ),
        ClipOval(
          child: Material(
            color: Colors.white, // button color
            child: InkWell(
              splashColor: Colors.white, // inkwell color
              onTap: () {
                ExtendedNavigator.of(context).pushNamed(
                  Routes.itemGroupForm,
                  arguments: ItemGroupFormArguments(
                    editedGroup: group,
                    categoryId: categoryId,
                  ),
                );
              },
              child: SizedBox(
                  width: 22,
                  height: 22,
                  child: Icon(
                    Icons.edit,
                    size: 18,
                    color: sepetimGrey,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
