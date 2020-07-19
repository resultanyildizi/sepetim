import 'package:Sepetim/application/item_category/watcher/item_category_watcher_bloc.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Sepetim/predefined_variables/colors.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  const SearchField({
    Key key,
    @required this.controller,
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
          maxLines: 1,
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
            hintText: translate(context, 'search_for_category'),
            prefixIcon: Icon(
              Icons.search,
              color: sepetimGrey,
            ),
          ),
          onChanged: (text) {
            if (text == '') {
              context.bloc<ItemCategoryWatcherBloc>().add(
                  const ItemCategoryWatcherEvent.watchAllStarted(
                      OrderType.date));
            }

            context.bloc<ItemCategoryWatcherBloc>().add(
                ItemCategoryWatcherEvent.watchAllByTitleStarted(
                    OrderType.date, text));
          },
        ),
      ),
    );
  }
}
