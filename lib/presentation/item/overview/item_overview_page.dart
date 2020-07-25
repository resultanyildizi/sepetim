import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/presentation/item/overview/widgets/item_card.dart';
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
    return BlocBuilder<ItemWatcherBloc, ItemWatcherState>(
      bloc: watcherBloc,
      builder: (context, state) => state.map(
        initial: (_) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Sepetim',
              style: robotoTextStyle(bold: true),
            ),
          ),
          body: const DefaultPadding(
            child: Center(),
          ),
          floatingActionButton: DefaultFloatingActionButton(
            onPressed: () {},
            iconData: Icons.add,
          ),
        ),
        loadSuccess: (state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Sepetim',
                style: robotoTextStyle(
                  bold: true,
                ),
              ),
            ),
            body: DefaultPadding(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      ExtendedNavigator.of(context).pushNamed(
                        Routes.itemForm,
                        arguments: ItemFormArguments(
                          category: category,
                          group: group,
                          editedItem: state.items[index],
                        ),
                      );
                    },
                    child: ItemCard(
                      item: state.items[index],
                      category: category,
                      group: group,
                    ),
                  );
                },
                itemCount: state.items.size,
              ),
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
    );
  }
}
