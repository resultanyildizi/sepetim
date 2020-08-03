import 'package:Sepetim/application/item_category/actor/item_category_actor_bloc.dart';
import 'package:Sepetim/application/item_category/selector/item_category_selector_bloc.dart';
import 'package:Sepetim/application/item_category/watcher/item_category_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/item_category/overview/widgets/item_category_card.dart';
import 'package:Sepetim/presentation/item_category/overview/widgets/search_field.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCategoryOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemCategoryWatcherBloc>(
          create: (context) => getIt<ItemCategoryWatcherBloc>()
            ..add(
              const ItemCategoryWatcherEvent.watchAllStarted(OrderType.date),
            ),
        ),
        BlocProvider<ItemCategoryActorBloc>(
          create: (context) => getIt<ItemCategoryActorBloc>(),
        ),
        BlocProvider<ItemCategorySelectorBloc>(
          create: (context) => getIt<ItemCategorySelectorBloc>(),
        ),
      ],
      child: BlocBuilder<ItemCategoryWatcherBloc, ItemCategoryWatcherState>(
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
                      controller: _controller,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      translate(context, 'categories'),
                      style: robotoTextStyle(bold: true, fontSize: 24.0),
                    ),
                    Expanded(
                      child: Center(child: Container()),
                    ),
                  ],
                ),
              ),
              floatingActionButton: DefaultFloatingActionButton(
                iconData: Icons.add,
                onPressed: () {},
              ),
            ),
            loadSuccess: (state) {
              return Scaffold(
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
                        controller: _controller,
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        translate(context, 'categories'),
                        style: robotoTextStyle(bold: true, fontSize: 24.0),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return ItemCategoryCard(
                              key:
                                  Key(state.categories[index].uid.getOrCrash()),
                              category: state.categories[index],
                            );
                          },
                          itemCount: state.categories.size,
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: DefaultFloatingActionButton(
                  iconData: Icons.add,
                  onPressed: () {
                    ExtendedNavigator.of(context).pushNamed(
                      Routes.itemCategoryForm,
                    );
                  },
                ),
              );
            },
            loadFailure: (_) => Center(
              child: Text(translate(context, 'please_report')),
            ),
          );
        },
      ),
    );
  }
}
