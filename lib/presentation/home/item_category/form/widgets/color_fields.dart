import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/domain/item_category/value_objects.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorPickerField extends StatelessWidget {
  const ColorPickerField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCategoryFormBloc, ItemCategoryFormState>(
      condition: (p, c) => p.category.color != c.category.color,
      builder: (context, state) {
        return Container(
          height: screenHeightByScalar(context,
              scalarSmall: 0.07, scalarMedium: 0.03, scalarBig: 0.03),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: ItemCategoryColor.predefinedColors.length,
            separatorBuilder: (context, index) {
              return SizedBox(width: screenWidthByScalar(context, 0.017));
            },
            itemBuilder: (context, index) {
              final itemColor = ItemCategoryColor.predefinedColors[index];
              return GestureDetector(
                onTap: () {
                  context
                      .bloc<ItemCategoryFormBloc>()
                      .add(ItemCategoryFormEvent.colorChanged(itemColor));
                },
                child: Material(
                  color: itemColor,
                  elevation: 4,
                  shape: CircleBorder(
                    side: state.category.color.value.fold(
                      (_) => BorderSide.none,
                      (color) => color == itemColor
                          ? const BorderSide(width: 2.0, color: sepetimGrey)
                          : BorderSide.none,
                    ),
                  ),
                  child: Container(
                    width: screenWidthByScalar(context, 0.08),
                    height: screenWidthByScalar(context, 0.08),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
