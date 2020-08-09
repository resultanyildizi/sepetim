import 'package:flutter/material.dart';

import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LinkForm extends StatelessWidget {
  final ItemCategory category;
  final ItemGroup group;
  final ItemFormBloc formBloc;
  const LinkForm({
    Key key,
    @required this.category,
    @required this.group,
    @required this.formBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemFormBloc, ItemFormState>(
      bloc: formBloc,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Sepetim',
            style: robotoTextStyle(bold: true),
          ),
        ),
        body: DefaultPadding(
          child: Center(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.item.linkObjects
                    .getOrCrash()[index]
                    .title
                    .getOrCrash()),
              );
            },
            itemCount: state.item.linkObjects.getOrCrash().size,
          )),
        ),
      ),
    );
  }
}
