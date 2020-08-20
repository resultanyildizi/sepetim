import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveButton extends StatelessWidget {
  final UniqueId categoryId;
  final UniqueId groupId;
  const SaveButton({
    Key key,
    this.categoryId,
    this.groupId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      height: 35,
      width: screenWidthByScalar(context, 1.0),
      text: translate(context, 'save'),
      onPressed: () {
        context
            .bloc<ItemFormBloc>()
            .add(ItemFormEvent.saved(categoryId, groupId));
      },
    );
  }
}
