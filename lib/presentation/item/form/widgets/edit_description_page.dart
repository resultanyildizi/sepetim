import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/item/form/widgets/text_fields.dart';

class EditDescriptionPage extends StatelessWidget {
  final ItemFormBloc itemFormBloc;
  final String initialText;
  const EditDescriptionPage({
    Key key,
    @required this.itemFormBloc,
    @required this.initialText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    textEditingController.text = initialText;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: robotoTextStyle(bold: true),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                final value = textEditingController.text;
                itemFormBloc
                    .add(ItemFormEvent.descriptionChanged(value.trim()));
                ExtendedNavigator.of(context).pop();
              },
              child: Icon(
                Icons.check_box,
                size: 30,
                color: sepetimGrey,
              ),
            ),
            const SizedBox(
              width: 5,
            )
          ],
        ),
        body: DefaultPadding(
          child: DescriptionBodyTextField(
            textEditingController: textEditingController,
            itemFormBloc: itemFormBloc,
          ),
        ));
  }
}
