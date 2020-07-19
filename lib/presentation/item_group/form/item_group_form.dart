import 'package:Sepetim/application/item_group/form/item_group_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/injection.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/item_group/form/widgets/save_button.dart';
import 'package:Sepetim/presentation/item_group/form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemGroupForm extends StatelessWidget {
  final UniqueId categoryId;
  final ItemGroup editedGroup;
  const ItemGroupForm({Key key, this.editedGroup, this.categoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemGroupFormBloc>(
          create: (context) => getIt<ItemGroupFormBloc>()
            ..add(
              ItemGroupFormEvent.initialized(
                optionOf(editedGroup),
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
        body: BlocConsumer<ItemGroupFormBloc, ItemGroupFormState>(
          listener: (context, state) {
            state.groupFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) => failure.map(
                  unexpected: (_) => serverErrorPopup(context),
                  insufficientPermission: (_) => serverErrorPopup(context),
                  unableToUpdate: (_) => serverErrorPopup(context),
                  networkException: (_) => networkExceptionPopup(context),
                ),
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.itemGroupOverviewPage);
                },
              ),
            );
          },
          builder: (context, state) {
            return DefaultPadding(
              child: Form(
                autovalidate: state.showErrorMessages,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      translate(context, 'add_a_group'),
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
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (state.isSaving) ...[
                            SmallCircularProgressIndicator()
                          ],
                          const DividerDefault(),
                          SaveButton(
                            categoryId: categoryId,
                          ),
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
