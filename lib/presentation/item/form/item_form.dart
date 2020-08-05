import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/item/form/widgets/edit_description_button.dart';
import 'package:Sepetim/presentation/item/form/widgets/picture_fields.dart';
import 'package:Sepetim/presentation/item/form/widgets/save_button.dart';
import 'package:Sepetim/presentation/item/form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemForm extends StatelessWidget {
  final ItemCategory category;
  final ItemGroup group;
  final Item editedItem;
  const ItemForm({
    Key key,
    @required this.category,
    @required this.group,
    @required this.editedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemFormBloc>(
          create: (context) => getIt<ItemFormBloc>()
            ..add(
              ItemFormEvent.initialized(
                optionOf(editedItem),
              ),
            ),
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: robotoTextStyle(bold: true),
          ),
        ),
        body: BlocConsumer<ItemFormBloc, ItemFormState>(
            listener: (context, state) {
          state.itemFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) => failure.map(
                  unexpected: (_) => serverErrorPopup(context),
                  insufficientPermission: (_) => serverErrorPopup(context),
                  unableToUpdate: (_) => serverErrorPopup(context),
                  imageLoadCanceled: (_) {},
                  networkException: (_) => networkExceptionPopup(context),
                ),
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.itemOverviewPage);
                },
              );
            },
          );
        }, builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height - 180,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16.0, left: 22.0, right: 22.0),
                            child: Text(
                              translate(context, 'add_an_item'),
                              style:
                                  robotoTextStyle(bold: true, fontSize: 20.0),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Text(
                              translate(context, 'title'),
                              style: didactGothicTextStyle(
                                  bold: false, fontSize: 18.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 22.0),
                            child: TitleTextField(),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Text(
                              translate(context, 'price'),
                              style: didactGothicTextStyle(
                                  bold: false, fontSize: 18.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 22.0),
                            child: PriceTextField(),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Text(
                              translate(context, 'description'),
                              style: didactGothicTextStyle(
                                  bold: false, fontSize: 18.0),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22.0),
                              child: EditDescriptionButton()
                              // child: DescriptionBodyTextField(),
                              ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Text(
                              translate(context, 'pictures'),
                              style: didactGothicTextStyle(
                                  bold: false, fontSize: 18.0),
                            ),
                          ),
                          const Center(child: PictureFields()),
                        ],
                      ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16.0, left: 22.0, right: 22.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        if (state.isSaving) ...[
                          SmallCircularProgressIndicator(),
                        ],
                        const DividerDefault(),
                        SaveButton(
                          categoryId: category.uid,
                          groupId: group.uid,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
