import 'package:Sepetim/application/item_category/form/item_category_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            scalarBig: 0.2,
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  if (state.isCoverRemoved) ...[
                    ClipOval(
                      child: Image.asset(
                        'assets/images/default.png',
                        width: screenWidthByScalar(context, 0.3),
                        height: screenWidthByScalar(context, 0.3),
                        fit: BoxFit.cover,
                      ),
                    )
                  ] else ...[
                    ClipOval(
                      child: state.temporaryImageFile.fold(
                        () => CachedNetworkImage(
                          errorWidget: (context, url, error) =>
                              Image.asset('assets/images/default.png'),
                          imageUrl: state.category.coverImageUrl.getOrCrash(),
                          width: screenWidthByScalar(context, 0.3),
                          height: screenWidthByScalar(context, 0.3),
                          fadeOutDuration: const Duration(seconds: 0),
                          fadeInDuration: const Duration(seconds: 0),
                          fit: BoxFit.cover,
                        ),
                        (imageFile) => Image.file(
                          imageFile,
                          width: screenWidthByScalar(context, 0.3),
                          height: screenWidthByScalar(context, 0.3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  if ((state.category.coverImageUrl.getOrCrash() !=
                              ImageUrl.defaultUrl().getOrCrash() ||
                          state.temporaryImageFile.isSome()) &&
                      !state.isCoverRemoved) ...[
                    GestureDetector(
                      onTap: () {
                        context.bloc<ItemCategoryFormBloc>().add(
                            const ItemCategoryFormEvent.coverImageRemoved());
                      },
                      child: Icon(
                        Icons.close,
                        color: sepetimLightGrey,
                        size: 15,
                      ),
                    )
                  ],
                ],
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
