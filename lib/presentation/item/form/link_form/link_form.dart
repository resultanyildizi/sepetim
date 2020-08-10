import 'package:Sepetim/application/item/actor/item_actor_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:Sepetim/presentation/item/form/misc/build_context_helper.dart';
import 'package:Sepetim/presentation/item/form/misc/form_link_objects.dart';
import 'package:Sepetim/presentation/item/form/misc/link_object_primitive.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkForm extends StatelessWidget {
  final ItemCategory category;
  final ItemGroup group;
  final ItemFormBloc formBloc;
  final ItemActorBloc actorBloc;
  const LinkForm({
    Key key,
    @required this.category,
    @required this.group,
    @required this.formBloc,
    @required this.actorBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemFormBloc, ItemFormState>(
      bloc: formBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Sepetim',
              style: robotoTextStyle(bold: true),
            ),
          ),
          body: DefaultPadding(
            child: Column(
              children: <Widget>[
                Container(
                  constraints:
                      const BoxConstraints(minWidth: 1, maxHeight: 300),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final link = state.item.linkObjects.getOrCrash()[index];
                      return ListTile(
                        subtitle: Text(
                          link.link.getOrCrash(),
                        ),
                        title: Text(
                          link.title.getOrCrash(),
                        ),
                        key: Key(
                          link.uid.getOrCrash(),
                        ),
                        onLongPress: () {
                          final linkObjectPrimitive =
                              context.formLinks.elementAt(index);
                          context.formLinks = context.formLinks
                              .minusElement(linkObjectPrimitive);
                          formBloc.add(ItemFormEvent.linkObjectsChanged(
                              context.formLinks));
                        },
                        onTap: () async {
                          final url = link.link.getOrCrash();
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                      );
                    },
                    itemCount: state.item.linkObjects.getOrCrash().size,
                  ),
                ),
                Text(
                  'Link title',
                  style: robotoTextStyle(bold: true),
                ),
                RoundedButton(
                  text: 'Add link',
                  onPressed: () {
                    if (!state.item.linkObjects.isFull) {
                      context.formLinks = context.formLinks.plusElement(
                          LinkObjectPrimitive(
                              link:
                                  'https://www.hepsiburada.com/samsung-lc27f391fhmxuf-27-60-72hz-hdmi-display-hoparlor-fhd-freesync-beyaz-kavisli-va-monitor-pm-HB0000040PFU',
                              title: 'Deneme',
                              uid: UniqueId()));
                      formBloc.add(
                          ItemFormEvent.linkObjectsChanged(context.formLinks));
                      formBloc
                          .add(ItemFormEvent.saved(category.uid, group.uid));
                    } else {
                      actionPopup(context,
                          title: Text('Link addition limit'),
                          content: Text('You cant add more than 5 links'),
                          barrierDismissible: true,
                          actions: [
                            RoundedButton(
                              text: 'Cancel',
                              onPressed: () {
                                ExtendedNavigator.of(context).pop();
                              },
                            ),
                          ]);
                    }
                  },
                ),
                RoundedButton(
                  text: 'Save',
                  onPressed: () {
                    formBloc.add(ItemFormEvent.saved(category.uid, group.uid));
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
