import 'package:Sepetim/application/item_group/form/item_group_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEdiginController = TextEditingController();

    return BlocConsumer<ItemGroupFormBloc, ItemGroupFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEdiginController.text = state.group.title.getOrCrash();
      },
      buildWhen: (p, c) => p.group.title != c.group.title,
      builder: (context, state) => TextFormField(
        controller: textEdiginController,
        cursorColor: sepetimGrey,
        textCapitalization: TextCapitalization.sentences,
        style: Theme.of(context).textTheme.subtitle1,
        decoration: InputDecoration(
          labelText: translate(context, 'enter_a_title'),
          counterStyle: robotoTextStyle(),
        ),
        maxLength: ShortTitle.maxLength,
        autocorrect: false,
        onChanged: (value) => context
            .bloc<ItemGroupFormBloc>()
            .add(ItemGroupFormEvent.titleChanged(value.trim())),
        validator: (_) =>
            context.bloc<ItemGroupFormBloc>().state.group.title.value.fold(
                (f) => f.maybeMap(
                      empty: (_) => translate(context, 'empty_title'),
                      exceedingLength: (_) =>
                          translate(context, 'title_exceeding_length'),
                      multiLine: (_) => translate(context, 'title_multiline'),
                      orElse: () => null,
                    ),
                (_) => null),
      ),
    );
  }
}
