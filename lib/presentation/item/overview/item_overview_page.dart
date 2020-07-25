import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';

class ItemOverviewPage extends StatelessWidget {
  final UniqueId categoryId;
  final ItemGroup group;
  final ItemWatcherBloc watcherBloc;
  const ItemOverviewPage({
    Key key,
    this.categoryId,
    this.group,
    this.watcherBloc,
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
          print('size ${state.items.size}');
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
                  return ListTile(
                    title: Text(
                      state.items[index].title.getOrCrash(),
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
                    categoryId: categoryId,
                    groupId: group.uid,
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
