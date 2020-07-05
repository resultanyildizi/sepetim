import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:Sepetim/presentation/item_category_form/widgets/color_fields.dart';
import 'package:Sepetim/presentation/item_category_form/widgets/cover_picture_field.dart';
import 'package:Sepetim/presentation/item_category_form/widgets/save_button.dart';
import 'package:Sepetim/presentation/item_category_form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
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
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: robotoTextStyle(
              bold: true,
            ),
          ),
        ),
        body: BlocConsumer<ItemCategoryFormBloc, ItemCategoryFormState>(
          listener: (context, state) {
            state.categoryFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    failure.map(
                        unexpected: (_) {
                          print('unexpected');
                        },
                        insufficientPermission: (_) {
                          print('insufficient permission');
                        },
                        unableToUpdate: (_) {
                          print('unable to update');
                        },
                        imageLoadCanceled: (_) {});
                  },
                  (_) {
                    ExtendedNavigator.of(context).popUntil((route) =>
                        route.settings.name == Routes.applicationContentPage);
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return DefaultPadding(
              child: Form(
                autovalidate: state.showErrorMessages,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      translate(context, 'add_a_category'),
                      style: robotoTextStyle(bold: true, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: screenHeightByScalar(
                        context,
                        scalarSmall: 0.02,
                        scalarMedium: 0.02,
                        scalarBig: 0.02,
                      ),
                    ),
                    Text(
                      translate(context, 'title'),
                      style: didactGothicTextStyle(bold: false, fontSize: 18.0),
                    ),
                    const TitleTextField(),
                    SizedBox(
                      height: screenHeightByScalar(
                        context,
                        scalarSmall: 0.02,
                        scalarMedium: 0.02,
                        scalarBig: 0.02,
                      ),
                    ),
                    Text(
                      translate(context, 'colors'),
                      style: didactGothicTextStyle(bold: false, fontSize: 18.0),
                    ),
                    const ColorPickerField(),
                    SizedBox(
                      height: screenHeightByScalar(
                        context,
                        scalarSmall: 0.02,
                        scalarMedium: 0.02,
                        scalarBig: 0.2,
                      ),
                    ),
                    Text(
                      translate(context, 'colors'),
                      style: didactGothicTextStyle(bold: false, fontSize: 18.0),
                    ),
                    const CoverPictureField(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const DividerDefault(),
                          SaveButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
