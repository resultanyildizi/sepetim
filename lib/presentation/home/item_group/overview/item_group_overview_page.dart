import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/home/item_group/overview/widgets/item_group_card.dart';
import 'package:Sepetim/presentation/home/item_group/overview/widgets/search_field.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Sepetim/application/item_group/actor/item_group_actor_bloc.dart';
import 'package:Sepetim/application/item_group/watcher/item_group_watcher_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';

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
            ..add(
              ItemGroupWatcherEvent.watchAllStarted(
                category.uid,
                OrderType.date,
              ),
            ),
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
                title: Text('Sepetim',
                    style: Theme.of(context).appBarTheme.textTheme.headline1),
              ),
              body: DefaultPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SearchField(
                      watcherBloc: context.bloc<ItemGroupWatcherBloc>(),
                      categoryId: category.uid,
                      controller: _controller,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      '${translate(context, 'groups')} - ${category.title.getOrCrash()}',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Expanded(
                      child: Center(child: Container()),
                    ),
                  ],
                ),
              ),
              floatingActionButton: DefaultFloatingActionButton(
                onPressed: () {
                  print('hello');
                },
                iconData: Icons.add,
              ),
            ),
            loading: (_) => Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: Text('Sepetim',
                    style: Theme.of(context).appBarTheme.textTheme.headline1),
              ),
              body: DefaultPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SearchField(
                      watcherBloc: context.bloc<ItemGroupWatcherBloc>(),
                      categoryId: category.uid,
                      controller: _controller,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      '${translate(context, 'groups')} - ${category.title.getOrCrash()}',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const Expanded(
                      child: Center(
                        child: SizedBox(
                            width: 30.0,
                            height: 30.0,
                            child: CircularProgressIndicator()),
                      ),
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
              return BlocListener<ItemGroupActorBloc, ItemGroupActorState>(
                listener: (context, state) {
                  state.map(
                    initial: (_) {},
                    actionInProgress: (_) => actionPopup(
                      context,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      content: Text('${translate(context, 'deleting')}...'),
                      barrierDismissible: false,
                    ),
                    deleteFailure: (failure) {
                      ExtendedNavigator.of(context).pop();
                      failure.groupFailure.maybeMap(
                        networkException: (_) => networkExceptionPopup(context),
                        orElse: () => serverErrorPopup(context),
                      );
                    },
                    deleteSuccess: (_) =>
                        ExtendedNavigator.of(context).popUntil(
                      (route) =>
                          route.settings.name == Routes.itemGroupOverviewPage,
                    ),
                  );
                },
                child: Scaffold(
                  resizeToAvoidBottomPadding: false,
                  appBar: AppBar(
                    title: Text('Sepetim',
                        style:
                            Theme.of(context).appBarTheme.textTheme.headline1),
                  ),
                  body: DefaultPadding(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SearchField(
                          watcherBloc: context.bloc<ItemGroupWatcherBloc>(),
                          categoryId: category.uid,
                          controller: _controller,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          '${translate(context, 'groups')} - ${category.title.getOrCrash()}',
                          style: Theme.of(context).textTheme.headline1,
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
                      ExtendedNavigator.of(context).push(
                        Routes.itemGroupForm,
                        arguments:
                            ItemGroupFormArguments(categoryId: category.uid),
                      );
                    },
                    iconData: Icons.add,
                  ),
                ),
              );
            },
            loadFailure: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Sepetim',
                    style: Theme.of(context).appBarTheme.textTheme.headline1),
              ),
              body: DefaultPadding(
                child: Center(
                  child: Container(
                    width: screenWidthByScalar(context, 0.8),
                    child: Text(
                      translate(context, 'please_report'),
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
              floatingActionButton: DefaultFloatingActionButton(
                onPressed: () {},
                iconData: Icons.add,
              ),
            ),
          );
        },
      ),
    );
  }
}
