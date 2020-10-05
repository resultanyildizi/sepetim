import 'dart:convert' show utf8;
import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
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

    return BlocConsumer<ItemCategoryFormBloc, ItemCategoryFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEdiginController.text = state.category.title.getOrCrash();
      },
      buildWhen: (p, c) => p.category.title != c.category.title,
      builder: (context, state) => TextFormField(
        controller: textEdiginController,
        cursorColor: sepetimGrey,
        textCapitalization: TextCapitalization.sentences,
        style: Theme.of(context).textTheme.subtitle1,
        decoration: InputDecoration(
          counterStyle: robotoTextStyle(),
          counterText: utf8
              .decode(utf8.encode(textEdiginController.text))
              .length
              .toString(),
          labelText: translate(context, 'enter_a_title'),
        ),
        maxLength: ShortTitle.maxLength,
        autocorrect: false,
        onChanged: (value) => context
            .bloc<ItemCategoryFormBloc>()
            .add(ItemCategoryFormEvent.titleChanged(value.trim())),
        validator: (_) => context
            .bloc<ItemCategoryFormBloc>()
            .state
            .category
            .title
            .value
            .fold(
              (f) => f.maybeMap(
                empty: (_) => translate(context, 'empty_title'),
                exceedingLength: (_) =>
                    translate(context, 'title_exceeding_length'),
                multiLine: (_) => translate(context, 'title_multiline'),
                orElse: () => null,
              ),
              (_) => null,
            ),
      ),
    );
  }
}
