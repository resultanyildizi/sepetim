import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/application/item_category/watcher/item_category_watcher_bloc.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_floating_action_button.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/home/widgets/item_category_card.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemCategoryWatcherBloc>(
          create: (context) => getIt<ItemCategoryWatcherBloc>()
            ..add(
              const ItemCategoryWatcherEvent.watchAllStarted(OrderType.title),
            ),
        ),
      ],
      child: BlocBuilder<ItemCategoryWatcherBloc, ItemCategoryWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Center(
                    child: SmallCircularProgressIndicator(),
                  ),
              loadSuccess: (state) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(
                      'Sepetim',
                      style: robotoTextStyle(bold: true),
                    ),
                  ),
                  body: DefaultPadding(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return ItemCategoryCard(
                          category: state.categories[index],
                        );
                      },
                      itemCount: state.categories.size,
                    ),
                  ),
                  floatingActionButton: DefaultFloatingActionButton(
                    iconData: Icons.add,
                    onPressed: () {
                      ExtendedNavigator.of(context)
                          .pushNamed(Routes.itemCategoryForm);
                    },
                  ),
                );
              },
              loadFailure: (_) => const Center(
                    child: Text('Failure'),
                  ));
        },
      ),
    );
  }
}
