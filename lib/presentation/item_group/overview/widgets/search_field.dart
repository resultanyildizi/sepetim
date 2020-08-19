import 'package:flutter/material.dart';

import 'package:Sepetim/application/item_group/watcher/item_group_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final UniqueId categoryId;
  final ItemGroupWatcherBloc watcherBloc;
  const SearchField({
    Key key,
    @required this.controller,
    @required this.categoryId,
    @required this.watcherBloc,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        height: 35,
        child: TextFormField(
          controller: controller,
          cursorColor: sepetimGrey,
          textCapitalization: TextCapitalization.sentences,
          style: Theme.of(context).textTheme.subtitle1,
          autocorrect: false,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            isDense: false,
            fillColor: sepetimLightGrey,
            filled: true,
            hintStyle: didactGothicTextStyle(fontSize: 16.0),
            hintText: translate(context, 'search_for_group'),
            prefixIcon: const Icon(
              Icons.search,
              color: sepetimGrey,
            ),
          ),
          onChanged: (text) {
            watcherBloc.add(
              ItemGroupWatcherEvent.watchAllByTitleStarted(
                  categoryId, OrderType.date, text.trim()),
            );
          },
        ),
      ),
    );
  }
}
