import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CoverPictureField extends StatelessWidget {
  const CoverPictureField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemCategoryFormBloc, ItemCategoryFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          height: screenHeightByScalar(
            context,
            scalarSmall: 0.2,
            scalarMedium: 0.2,
            scalarBig: 0.3,
          ),
          child: Row(
            children: [
              ClipOval(
                child: Image.network(
                  state.category.coverImageUrl.getOrCrash(),
                  width: screenWidthByScalar(context, 0.3),
                  height: screenWidthByScalar(context, 0.3),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedIconButton(
                      width: screenWidthByScalar(context, 0.5),
                      height: 25,
                      iconData: Icons.camera,
                      text: translate(context, 'from_camera'),
                      onPressed: () {
                        context.bloc<ItemCategoryFormBloc>().add(
                              const ItemCategoryFormEvent.coverImageChanged(
                                ImageSource.camera,
                              ),
                            );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RoundedIconButton(
                      width: screenWidthByScalar(context, 0.5),
                      height: 25,
                      text: translate(context, 'from_gallery'),
                      iconData: Icons.image,
                      onPressed: () {
                        context.bloc<ItemCategoryFormBloc>().add(
                              const ItemCategoryFormEvent.coverImageChanged(
                                ImageSource.gallery,
                              ),
                            );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
