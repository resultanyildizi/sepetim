import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';

class PictureFields extends StatelessWidget {
  const PictureFields({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemFormBloc, ItemFormState>(
      listener: (context, state) => null,
      builder: (context, state) {
        return Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                height: 160,
                width: screenWidthByScalar(context, 1),
                child: Center(
                  child: BlocBuilder<ItemFormBloc, ItemFormState>(
                    builder: (context, state) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () async {
                                await imagePickerPopup(context,
                                    imageIndex: index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: const Offset(0, 1),
                                    )
                                  ],
                                ),
                                child: state.temporaryImageFiles[index].fold(
                                  () => CachedNetworkImage(
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                            'assets/images/default.png'),
                                    imageUrl: state.item.imageUrls
                                        .getOrCrash()[index]
                                        .getOrCrash(),
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  (imageFile) => Image.file(
                                    imageFile,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: state.item.imageUrls.getOrCrash().size,
                        scrollDirection: Axis.horizontal,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Future imagePickerPopup(
  BuildContext context, {
  @required int imageIndex,
}) async {
  return actionPopup(
    context,
    title: Column(
      children: <Widget>[
        Text(
          translate(context, 'upload_image'),
          style: didactGothicTextStyle(),
        ),
        const SizedBox(
          height: 10,
        ),
        RoundedIconButton(
          onPressed: () {
            ExtendedNavigator.of(context).pop();
            context.bloc<ItemFormBloc>().add(
                  ItemFormEvent.imageChanged(
                    imageIndex,
                    ImageSource.camera,
                  ),
                );
          },
          text: translate(context, 'from_camera'),
          width: screenWidthByScalar(context, 0.5),
          iconData: Icons.camera_alt,
        ),
        RoundedIconButton(
          width: screenWidthByScalar(context, 0.5),
          onPressed: () {
            ExtendedNavigator.of(context).pop();
            context.bloc<ItemFormBloc>().add(
                  ItemFormEvent.imageChanged(
                    imageIndex,
                    ImageSource.gallery,
                  ),
                );
          },
          text: translate(context, 'from_gallery'),
          iconData: Icons.image,
        ),
      ],
    ),
  );
}
