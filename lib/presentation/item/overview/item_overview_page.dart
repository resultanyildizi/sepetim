import 'package:Sepetim/application/item/actor/item_actor_bloc.dart';
import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/item/overview/widgets/item_card.dart';
import 'package:Sepetim/presentation/item/overview/widgets/search_field.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';

class ItemOverviewPage extends StatelessWidget {
  final ItemCategory category;
  final ItemGroup group;
  final ItemWatcherBloc watcherBloc;
  const ItemOverviewPage({
    Key key,
    @required this.category,
    @required this.group,
    @required this.watcherBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemFormBloc>(
          create: (context) => getIt<ItemFormBloc>(),
        ),
      ],
      child: BlocBuilder<ItemWatcherBloc, ItemWatcherState>(
        bloc: watcherBloc,
        builder: (context, state) => state.map(
          initial: (_) => Scaffold(
            appBar: AppBar(
              title: Text(
                'Sepetim',
                style: robotoTextStyle(bold: true),
              ),
            ),
            body: DefaultPadding(
              child: Column(
                children: <Widget>[
                  SearchField(
                    categoryId: category.uid,
                    groupId: group.uid,
                    controller: _controller,
                    watcherBloc: watcherBloc,
                  )
                ],
              ),
            ),
            floatingActionButton: DefaultFloatingActionButton(
              onPressed: () {},
              iconData: Icons.add,
            ),
          ),
          loadSuccess: (state) {
            return WillPopScope(
              onWillPop: () async {
                watcherBloc.add(ItemWatcherEvent.watchAllStarted(
                    category.uid, group.uid, OrderType.date));
                await Future.delayed(const Duration(milliseconds: 50));
                return true;
              },
              child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    'Sepetim',
                    style: robotoTextStyle(
                      bold: true,
                    ),
                  ),
                ),
                body: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22.0, 16.0, 22.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SearchField(
                            categoryId: category.uid,
                            groupId: group.uid,
                            controller: _controller,
                            watcherBloc: watcherBloc,
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            '${translate(context, 'items')} - ${group.title.getOrCrash()}',
                            style: robotoTextStyle(bold: true, fontSize: 24.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${translate(context, 'items_count')}: ${state.items.size}',
                                style: robotoTextStyle(fontSize: 12.0),
                              ),
                              Text(
                                '${translate(context, 'total_price')}: ${totalItemsPrice(state.items)}₺',
                                style: robotoTextStyle(fontSize: 12.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ItemCard(
                            item: state.items[index],
                            category: category,
                            group: group,
                            key: Key(state.items[index].uid.getOrCrash()),
                          );
                        },
                        itemCount: state.items.size,
                      ),
                    ),
                  ],
                ),
                floatingActionButton: DefaultFloatingActionButton(
                  iconData: Icons.add,
                  onPressed: () {
                    ExtendedNavigator.of(context).pushNamed(
                      Routes.itemForm,
                      arguments: ItemFormArguments(
                        category: category,
                        group: group,
                        editedItem: null,
                      ),
                    );
                  },
                ),
              ),
            );
          },
          loadFailure: (_) => Scaffold(
            appBar: AppBar(
              title: Text(
                'Sepetim',
                style: robotoTextStyle(bold: true),
              ),
            ),
            body: const Center(
              child: Text('Load failure'),
            ),
            floatingActionButton: DefaultFloatingActionButton(
              onPressed: () {},
              iconData: Icons.add,
            ),
          ),
        ),
      ),
    );
  }
}
