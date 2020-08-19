import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Sepetim/application/item_group/actor/item_group_actor_bloc.dart';
import 'package:Sepetim/application/item_group/watcher/item_group_watcher_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/item_group/overview/widgets/item_group_card.dart';
import 'package:Sepetim/presentation/item_group/overview/widgets/search_field.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';

class ItemGroupOverviewPage extends StatelessWidget {
  final ItemCategory category;
  final ItemGroupWatcherBloc watcherBloc;
  const ItemGroupOverviewPage({
    Key key,
    @required this.category,
    @required this.watcherBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemGroupActorBloc>(
          create: (context) => getIt<ItemGroupActorBloc>(),
        )
      ],
      child: BlocBuilder<ItemGroupWatcherBloc, ItemGroupWatcherState>(
        bloc: watcherBloc,
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
                      watcherBloc: watcherBloc,
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
            loading: (_) => Scaffold(
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
                      watcherBloc: watcherBloc,
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
                      backgroundColor: Colors.white,
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
                          watcherBloc: watcherBloc,
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
                  title: Text(
                'Sepetim',
                style: robotoTextStyle(bold: true),
              )),
              body: DefaultPadding(
                child: Center(
                  child: Container(
                    width: screenWidthByScalar(context, 0.8),
                    child: Text(
                      translate(context, 'please_report'),
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
