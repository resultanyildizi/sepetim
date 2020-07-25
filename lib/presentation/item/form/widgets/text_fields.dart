import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    return BlocConsumer<ItemFormBloc, ItemFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        _textEditingController.text = state.item.title.getOrCrash();
      },
      buildWhen: (p, c) => p.item.title != c.item.title,
      builder: (BuildContext context, ItemFormState state) {
        return TextFormField(
          controller: _textEditingController,
          cursorColor: sepetimGrey,
          textCapitalization: TextCapitalization.sentences,
          style: Theme.of(context).textTheme.subtitle1,
          decoration:
              InputDecoration(labelText: translate(context, 'enter_a_title')),
          maxLength: ShortTitle.maxLength,
          maxLines: 1,
          autocorrect: false,
          onChanged: (value) => context
              .bloc<ItemFormBloc>()
              .add(ItemFormEvent.titleChanged(value)),
          validator: (_) =>
              context.bloc<ItemFormBloc>().state.item.title.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => translate(context, 'empty_title'),
                      exceedingLength: (_) =>
                          translate(context, 'title_exceeding_length'),
                      multiLine: (_) => translate(context, 'title_multiline'),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}

class PriceTextField extends StatelessWidget {
  const PriceTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    _textEditingController.text = '0.0';
    return BlocConsumer<ItemFormBloc, ItemFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        _textEditingController.text = state.item.price.getOrCrash().toString();
      },
      buildWhen: (p, c) => p.item.title != c.item.title,
      builder: (BuildContext context, ItemFormState state) {
        return TextFormField(
          keyboardType: TextInputType.number,
          controller: _textEditingController,
          cursorColor: sepetimGrey,
          style: Theme.of(context).textTheme.subtitle1,
          decoration:
              InputDecoration(labelText: translate(context, 'enter_a_price')),
          maxLines: 1,
          autocorrect: false,
          onTap: () {
            if (_textEditingController.text == '0.0' ||
                _textEditingController.text == '0') {
              _textEditingController.text = '';
            }
          },
          onFieldSubmitted: (value) {
            if (value == '') {
              _textEditingController.text = '0.0';
              context
                  .bloc<ItemFormBloc>()
                  .add(ItemFormEvent.priceChanged(_textEditingController.text));
            }
          },
          onChanged: (value) => context
              .bloc<ItemFormBloc>()
              .add(ItemFormEvent.priceChanged(value.trim())),
          validator: (_) =>
              context.bloc<ItemFormBloc>().state.item.price.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => translate(context, 'empty_price'),
                      invalidPrice: (_) => translate(context, 'invalid_price'),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}

class DescriptionBodyTextField extends StatelessWidget {
  const DescriptionBodyTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    return BlocConsumer<ItemFormBloc, ItemFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        _textEditingController.text = state.item.description.getOrCrash();
      },
      buildWhen: (p, c) => p.item.description != c.item.description,
      builder: (BuildContext context, ItemFormState state) {
        return TextFormField(
          keyboardType: TextInputType.multiline,
          controller: _textEditingController,
          cursorColor: sepetimGrey,
          textCapitalization: TextCapitalization.sentences,
          style: Theme.of(context).textTheme.subtitle1,
          decoration: InputDecoration(
              labelText: translate(context, 'enter_a_description')),
          maxLength: DescriptionBody.maxLength,
          maxLengthEnforced: true,
          maxLines: 4,
          minLines: 4,
          autocorrect: false,
          onChanged: (value) => context
              .bloc<ItemFormBloc>()
              .add(ItemFormEvent.descriptionChanged(value.trim())),
          validator: (_) =>
              context.bloc<ItemFormBloc>().state.item.description.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => translate(context, 'empty_description'),
                      exceedingLength: (_) =>
                          translate(context, 'description_exceeding_length'),
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}
