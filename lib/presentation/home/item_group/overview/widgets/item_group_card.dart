import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/home/item/overview/widgets/item_horizontal_listview.dart';
import 'package:Sepetim/presentation/home/item_group/overview/widgets/action_buttons.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemGroupCard extends StatelessWidget {
  final ItemCategory category;
  final ItemGroup group;
  const ItemGroupCard({Key key, this.category, this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemWatcherBloc>(
          create: (context) => getIt<ItemWatcherBloc>()
            ..add(ItemWatcherEvent.watchAllStarted(
                category.uid, group.uid, OrderType.date)),
        ),
      ],
      child: group.failureOption.fold(
        () => cardSuccess(),
        (a) => cardFailure(context),
      ),
    );
  }

  Container cardFailure(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 24),
      decoration: BoxDecoration(
          color: sepetimSmoothRed,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(70),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 60),
          const SizedBox(height: 3),
          Text(
            translate(context, 'something_went_wrong'),
            style: robotoTextStyle(color: Colors.white),
          ),
          const SizedBox(height: 3),
          // TODO: Implement report function
          ErrorOutlineButton(onPressed: () {})
        ],
      ),
    );
  }

  BlocBuilder<ItemWatcherBloc, ItemWatcherState> cardSuccess() {
    return BlocBuilder<ItemWatcherBloc, ItemWatcherState>(
      builder: (context, state) => GestureDetector(
        onTap: () {
          ExtendedNavigator.of(context).push(
            Routes.itemOverviewPage,
            arguments: ItemOverviewPageArguments(
              category: category,
              group: group,
              watcherBloc: context.bloc<ItemWatcherBloc>(),
              key: Key(group.uid.getOrCrash()),
            ),
          );
        },
        child: Container(
            height: 160,
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 24),
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(70),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(group.title.fittedString(maxLength: 22),
                          style: Theme.of(context).textTheme.headline2),
                      Expanded(
                        child: ItemGroupActionButtons(
                          categoryId: category.uid,
                          group: group,
                        ),
                      )
                    ],
                  ),
                  Expanded(child: itemWatcherState(context, state)),
                ],
              ),
            )),
      ),
    );
  }

  Widget itemWatcherState(BuildContext context, ItemWatcherState state) {
    return state.map(
      initial: (_) => Container(),
      loadSuccess: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 100,
              child: ItemHorizontalListView(
                items: state.items,
              ),
            ),
            Text(
                '${translate(context, 'items_count')}: ${state.items.size} - ${translate(context, 'total_price')}: ${totalItemsPrice(state.items).fittedPrice(context)} ₺',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 12.0))
          ],
        );
      },
      loading: (_) => Column(children: <Widget>[
        const Spacer(),
        LinearProgressIndicator(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          minHeight: 2,
          valueColor: const AlwaysStoppedAnimation(sepetimYellow),
        ),
      ]),
      // Todo: Complete that part
      loadFailure: (_) => Center(
        child: Text(translate(context, 'please_report')),
      ),
    );
  }
}
