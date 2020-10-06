import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/home/item/form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';

class EditDescriptionPage extends StatefulWidget {
  final ItemFormBloc itemFormBloc;
  final String initialText;
  const EditDescriptionPage({
    Key key,
    @required this.itemFormBloc,
    @required this.initialText,
  }) : super(key: key);

  @override
  _EditDescriptionPageState createState() => _EditDescriptionPageState();
}

class _EditDescriptionPageState extends State<EditDescriptionPage> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = widget.initialText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        bool willPop = false;
        if (textEditingController.text != widget.initialText) {
          discardChangesPopup(
            context,
            yesFunction: () {
              ExtendedNavigator.of(context)
                  .popUntil((route) => route.settings.name == Routes.itemForm);
            },
            noFunction: () {
              ExtendedNavigator.of(context).pop();
            },
          );
        } else {
          willPop = true;
        }
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: Theme.of(context).appBarTheme.textTheme.headline1,
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                final value = textEditingController.text;
                widget.itemFormBloc
                    .add(ItemFormEvent.descriptionChanged(value.trim()));
                ExtendedNavigator.of(context).pop();
              },
              child: const Icon(
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
            itemFormBloc: widget.itemFormBloc,
          ),
        ),
      ),
    );
  }
}
