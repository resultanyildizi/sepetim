import 'package:auto_route/auto_route.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Sepetim/application/item_category/actor/item_category_actor_bloc.dart';
import 'package:Sepetim/application/item_category/selector/item_category_selector_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';

class ItemCategoryCard extends StatelessWidget {
  final ItemCategory category;
  const ItemCategoryCard({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return category.failureOption.fold(
      () => GestureDetector(
        onHorizontalDragEnd: (details) {
          context
              .bloc<ItemCategorySelectorBloc>()
              .add(ItemCategorySelectorEvent.selectedChanged(category));
        },
        child: BlocBuilder<ItemCategorySelectorBloc, ItemCategorySelectorState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () => goToNextPage(context),
              child: Card(
                elevation: 4.0,
                color: category.color.getOrCrash(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        category.title.fittedString(
                          maxLength: 14,
                        ),
                        style: didactGothicTextStyle(
                          bold: true,
                        ),
                      ),
                      const Divider(
                        color: sepetimGrey,
                        height: 5.0,
                        thickness: 1.5,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.grey[600],
                              size: 18,
                            ),
                            Stack(
                              children: <Widget>[
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: isSelected(state) ? 1 : 0,
                                  alwaysIncludeSemantics: true,
                                  child: Visibility(
                                    visible: isSelected(state),
                                    child: getIconButtons(context),
                                  ),
                                ),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: isSelected(state) ? 0 : 1,
                                  alwaysIncludeSemantics: true,
                                  child: Visibility(
                                    visible: !isSelected(state),
                                    child: getNetworkImage(),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey[600],
                              size: 18.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      const Divider(
                        color: sepetimGrey,
                        height: 5.0,
                        thickness: 1.5,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '${translate(context, 'groups_count')}: ${category.groupCount.getOrCrash()}',
                              style:
                                  robotoTextStyle(fontSize: 10.0, bold: true),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Icon(Icons.date_range,
                                    color: sepetimGrey, size: 12.0),
                                const SizedBox(width: 4.0),
                                Text(
                                  category.creationTime
                                      .toString()
                                      .substring(0, 16),
                                  style: robotoTextStyle(
                                      fontSize: 10.0, bold: true),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      // TODO: Implement report us button
      (failure) => Card(
        elevation: 4.0,
        color: sepetimSmoothRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 60),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              translate(context, 'something_went_wrong'),
              style: robotoTextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 3.0,
            ),
            ErrorOutlineButton(onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget getNetworkImage() {
    return Center(
      child: CachedNetworkImage(
        imageUrl: category.coverImageUrl.getOrCrash(),
        errorWidget: (context, url, error) => CircleAvatar(
          backgroundImage: const AssetImage('assets/images/default.png'),
          radius: screenWidthByScalar(context, 0.11),
        ),
        placeholder: (context, url) => CircleAvatar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          radius: screenWidthByScalar(context, 0.11),
          child: SizedBox(
            height: 25.0,
            width: 25.0,
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(category.color.getOrCrash()),
              strokeWidth: 2.0,
            ),
          ),
        ),
        imageBuilder: (context, image) => CircleAvatar(
          backgroundImage: image,
          radius: screenWidthByScalar(context, 0.11),
        ),
      ),
    );
  }

  Widget getIconButtons(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipOval(
            child: Material(
              color: sepetimGrey,
              child: InkWell(
                splashColor: sepetimGrey,
                onTap: () {
                  deletePopup(
                    context,
                    title:
                        '${translate(context, 'delete_category_title')}  ${category.title.getOrCrash()}',
                    action: () => context.bloc<ItemCategoryActorBloc>().add(
                          ItemCategoryActorEvent.deleted(category),
                        ),
                    message: translate(context, 'delete_category_message'),
                  );
                },
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Icon(
                    Icons.delete_forever,
                    size: 20,
                    color: category.color.getOrCrash(),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          ClipOval(
            child: Material(
              color: sepetimGrey, // button color
              child: InkWell(
                splashColor: Colors.white, // inkwell color
                onTap: () {
                  ExtendedNavigator.of(context).push(
                    Routes.itemCategoryForm,
                    arguments: ItemCategoryFormArguments(
                      editedCategory: category,
                    ),
                  );
                },
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Icon(
                    Icons.edit,
                    size: 20,
                    color: category.color.getOrCrash(),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool isSelected(ItemCategorySelectorState state) {
    return state.selectedCategory
        .fold(() => false, (selected) => category == selected);
  }

  void goToNextPage(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.itemGroupOverviewPage,
      arguments: ItemGroupOverviewPageArguments(
        key: Key(category.uid.getOrCrash()),
        category: category,
      ),
    );
  }
}
