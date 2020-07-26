import 'package:Sepetim/application/item_group/actor/item_group_actor_bloc.dart';
import 'package:Sepetim/application/item_group/watcher/item_group_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/item_group/overview/widgets/item_group_card.dart';
import 'package:Sepetim/presentation/item_group/overview/widgets/search_field.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemGroupOverviewPage extends StatelessWidget {
  final ItemCategory category;
  const ItemGroupOverviewPage({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemGroupWatcherBloc>(
          create: (context) => getIt<ItemGroupWatcherBloc>()
            ..add(ItemGroupWatcherEvent.watchAllStarted(
              category.uid,
              OrderType.date,
            )),
        ),
        BlocProvider<ItemGroupActorBloc>(
          create: (context) => getIt<ItemGroupActorBloc>(),
        )
      ],
      child: BlocBuilder<ItemGroupWatcherBloc, ItemGroupWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: Text(
                  'Sepetim',
                  style: robotoTextStyle(bold: true),
                ),
              ),
              body: DefaultPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SearchField(
                      categoryId: category.uid,
                      controller: _controller,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      '${translate(context, 'groups')} - ${category.title.getOrCrash()}',
                      style: robotoTextStyle(bold: true, fontSize: 24.0),
                    ),
                    Expanded(
                      child: Center(child: Container()),
                    ),
                  ],
                ),
              ),
              floatingActionButton: DefaultFloatingActionButton(
                onPressed: () {},
                iconData: Icons.add,
              ),
            ),
            loadSuccess: (state) => Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: Text(
                  'Sepetim',
                  style: robotoTextStyle(bold: true),
                ),
              ),
              body: DefaultPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SearchField(
                      categoryId: category.uid,
                      controller: _controller,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      '${translate(context, 'groups')} - ${category.title.getOrCrash()}',
                      style: robotoTextStyle(bold: true, fontSize: 24.0),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ItemGroupCard(
                            category: category,
                            group: state.groups[index],
                            key: Key(state.groups[index].uid.getOrCrash()),
                          );
                        },
                        itemCount: state.groups.size,
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: DefaultFloatingActionButton(
                onPressed: () {
                  ExtendedNavigator.of(context).pushNamed(
                    Routes.itemGroupForm,
                    arguments: ItemGroupFormArguments(categoryId: category.uid),
                  );
                },
                iconData: Icons.add,
              ),
            ),
            loadFailure: (_) => Center(
              child: Text(translate(context, 'please_report')),
            ),
          );
        },
      ),
    );
  }
}
