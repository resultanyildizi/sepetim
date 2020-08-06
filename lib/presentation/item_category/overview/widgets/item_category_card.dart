import 'package:Sepetim/application/item_group/watcher/item_group_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:auto_route/auto_route.dart';
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
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';

class ItemCategoryCard extends StatelessWidget {
  final ItemCategory category;
  const ItemCategoryCard({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemGroupWatcherBloc>(
          create: (context) => getIt<ItemGroupWatcherBloc>()
            ..add(ItemGroupWatcherEvent.watchAllStarted(
                category.uid, OrderType.date)),
        )
      ],
      child: GestureDetector(
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
                        category.title.getOrCrash().length <= 20
                            ? category.title.getOrCrash()
                            : '${category.title.getOrCrash().substring(0, 17)}...',
                        style: didactGothicTextStyle(
                          bold: true,
                          color: sepetimGrey,
                        ),
                      ),
                      Divider(
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
                        child: Stack(
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
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Divider(
                        color: sepetimGrey,
                        height: 5.0,
                        thickness: 1.5,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                      BlocBuilder<ItemGroupWatcherBloc, ItemGroupWatcherState>(
                        builder: (context, state) => Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  state.map(
                                      initial: (_) =>
                                          '${translate(context, 'loading')}...',
                                      loadSuccess: (state) =>
                                          '${translate(context, 'groups_count')}: ${state.groups.size}',
                                      loadFailure: (_) =>
                                          translate(context, 'error')),
                                  style: robotoTextStyle(
                                      fontSize: 10.0, bold: true),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.date_range,
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
                              ]),
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
    );
  }

  Widget getNetworkImage() {
    return Center(
      child: CachedNetworkImage(
        imageUrl: category.coverImageUrl.getOrCrash(),
        placeholder: (context, url) => CircleAvatar(
          backgroundColor: Colors.white,
          radius: screenHeightByScalar(context,
              scalarSmall: 0.065, scalarMedium: 0.060, scalarBig: 0.056),
        ),
        imageBuilder: (context, image) => CircleAvatar(
          backgroundImage: image,
          radius: screenHeightByScalar(context,
              scalarSmall: 0.065, scalarMedium: 0.060, scalarBig: 0.056),
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
                    )),
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
                  ExtendedNavigator.of(context).pushNamed(
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
                    )),
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
    ExtendedNavigator.of(context).pushNamed(
      Routes.itemGroupOverviewPage,
      arguments: ItemGroupOverviewPageArguments(
        key: Key(category.uid.getOrCrash()),
        category: category,
        watcherBloc: context.bloc<ItemGroupWatcherBloc>(),
      ),
    );
  }
}
