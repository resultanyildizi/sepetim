import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/home/item_category/form/widgets/color_fields.dart';
import 'package:Sepetim/presentation/home/item_category/form/widgets/cover_picture_field.dart';
import 'package:Sepetim/presentation/home/item_category/form/widgets/save_button.dart';
import 'package:Sepetim/presentation/home/item_category/form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCategoryForm extends StatelessWidget {
  final ItemCategory editedCategory;

  const ItemCategoryForm({Key key, this.editedCategory}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemCategoryFormBloc>(
          create: (context) => getIt<ItemCategoryFormBloc>()
            ..add(ItemCategoryFormEvent.initialized(optionOf(editedCategory))),
        ),
      ],
      child: BlocConsumer<ItemCategoryFormBloc, ItemCategoryFormState>(
        listener: (context, state) {
          state.categoryFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  failure.map(
                    unexpected: (_) {
                      serverErrorPopup(context);
                    },
                    insufficientPermission: (_) {
                      insufficientPermissionPopup(context);
                    },
                    unableToUpdate: (_) {
                      serverErrorPopup(context);
                    },
                    networkException: (_) {
                      networkExceptionPopup(context);
                    },
                    imageLoadCanceled: (_) {},
                  );
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.applicationContentPage);
                },
              );
            },
          );
        },
        builder: (context, state) => WillPopScope(
          onWillPop: () async {
            bool willPop = true;
            if (state.isChanged) {
              FocusScope.of(context).unfocus();
              discardChangesPopup(
                context,
                yesFunction: () {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.applicationContentPage);
                },
                noFunction: () {
                  ExtendedNavigator.of(context).pop();
                  willPop = false;
                },
              );
            }
            return willPop;
          },
          child: Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: Text('Sepetim',
                    style: Theme.of(context).appBarTheme.textTheme.headline1),
              ),
              body: DefaultPadding(
                child: Form(
                  autovalidate: state.showErrorMessages,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        translate(context, 'add_a_category'),
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(height: 10),
                      Text(translate(context, 'title'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 18.0)),
                      const TitleTextField(),
                      const SizedBox(height: 10),
                      Text(translate(context, 'colors'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 18.0)),
                      const SizedBox(height: 10),
                      const ColorPickerField(),
                      const SizedBox(height: 20),
                      Text(translate(context, 'cover_picture'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 18.0)),
                      const CoverPictureField(),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (state.isSaving) ...[
                              SmallCircularProgressIndicator()
                            ],
                            const DividerDefault(),
                            SaveButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
