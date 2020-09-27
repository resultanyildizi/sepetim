import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDescriptionButton extends StatelessWidget {
  const EditDescriptionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatRectangleButton(
        onPressed: () => ExtendedNavigator.of(context).push(
              Routes.editDescriptionPage,
              arguments: EditDescriptionPageArguments(
                itemFormBloc: context.bloc<ItemFormBloc>(),
                initialText: context
                    .bloc<ItemFormBloc>()
                    .state
                    .item
                    .description
                    .getOrCrash(),
              ),
            ),
        child: Text(
          translate(context, 'edit_description'),
          style: didactGothicTextStyle(fontSize: 16.0, color: sepetimLightGrey),
        ));
  }
}
