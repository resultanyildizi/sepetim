import 'package:Sepetim/domain/core/enums.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:Sepetim/application/item/actor/item_actor_bloc.dart';
import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/application/item/watcher/item_watcher_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/link_object/value_objects.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:Sepetim/predefined_variables/text_styles.dart';
import 'package:Sepetim/presentation/core/widgets/action_popup.dart';
import 'package:Sepetim/presentation/core/widgets/default_padding.dart';
import 'package:Sepetim/presentation/core/widgets/divider_default.dart';
import 'package:Sepetim/presentation/core/widgets/rounded_button.dart';
import 'package:Sepetim/presentation/core/widgets/small_circular_progress_indicator.dart';
import 'package:Sepetim/presentation/item/form/link_form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/item/form/misc/build_context_helper.dart';
import 'package:Sepetim/presentation/item/form/misc/link_object_primitive.dart';

class LinkForm extends StatefulWidget {
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
  _LinkFormState createState() => _LinkFormState();
}

class _LinkFormState extends State<LinkForm> {
  bool showErrorMessages = false;
  final TextEditingController titleTextEditingController =
      TextEditingController();
  final TextEditingController urlTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemFormBloc, ItemFormState>(
      bloc: widget.formBloc,
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              title: Text(
                'Sepetim',
                style: robotoTextStyle(bold: true),
              ),
            ),
            body: DefaultPadding(
              child: Form(
                autovalidate: showErrorMessages,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      translate(context, 'add_link'),
                      style: robotoTextStyle(bold: true, fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      translate(context, 'title'),
                      style: didactGothicTextStyle(bold: false, fontSize: 18.0),
                    ),
                    LinkTitleTextField(
                      textEdiginController: titleTextEditingController,
                      formBloc: widget.formBloc,
                    ),
                    Text(
                      translate(context, 'url'),
                      style: didactGothicTextStyle(bold: false, fontSize: 18.0),
                    ),
                    LinkUrlTextField(
                      textEdiginController: urlTextEditingController,
                      formBloc: widget.formBloc,
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: RoundedButton(
                        text: translate(context, 'add_link'),
                        onPressed: () {
                          final title = ShortTitle(
                              titleTextEditingController.text.trim());
                          final link =
                              Link(urlTextEditingController.text.trim());

                          if (!state.item.linkObjects.isFull &&
                              title.isValid &&
                              link.isValid) {
                            context.formLinks = context.formLinks.plusElement(
                              LinkObjectPrimitive(
                                uid: UniqueId(),
                                title: title.getOrCrash(),
                                link: link.getOrCrash(),
                              ),
                            );
                            widget.formBloc.add(
                                ItemFormEvent.linkObjectsChanged(
                                    context.formLinks));
                          } else {
                            setState(() {
                              showErrorMessages = true;
                            });
                            if (state.item.linkObjects.isFull) {
                              actionPopup(
                                context,
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
                                ],
                              );
                            }
                          }
                        },
                      ),
                    ),
                    Text(
                      translate(context, 'links'),
                      style: robotoTextStyle(bold: true, fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      constraints: const BoxConstraints(maxHeight: 120),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final link =
                              state.item.linkObjects.getOrCrash()[index];
                          return ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            subtitle: Text(
                              link.link.getOrCrash().length <= 30
                                  ? link.link.getOrCrash()
                                  : '${link.link.getOrCrash().substring(0, 30)}...',
                              style: didactGothicTextStyle(
                                fontSize: 12,
                              ),
                            ),
                            title: Text(
                              link.title.getOrCrash().length <= 20
                                  ? link.title.getOrCrash()
                                  : '${link.title.getOrCrash().substring(0, 20)}...',
                              style: didactGothicTextStyle(
                                fontSize: 18.0,
                                bold: true,
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.content_copy,
                                color: sepetimGrey,
                              ),
                              onPressed: () {
                                Clipboard.setData(ClipboardData(
                                    text: link.link.getOrCrash()));
                              },
                            ),
                            key: Key(
                              link.uid.getOrCrash(),
                            ),
                            onLongPress: () {
                              final linkObjectPrimitive =
                                  context.formLinks.elementAt(index);
                              context.formLinks = context.formLinks
                                  .minusElement(linkObjectPrimitive);
                              widget.formBloc.add(
                                  ItemFormEvent.linkObjectsChanged(
                                      context.formLinks));
                            },
                            onTap: () async {
                              final url = link.link.getOrCrash();
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {}
                            },
                          );
                        },
                        itemCount: state.item.linkObjects.getOrCrash().size,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          if (state.isSaving) ...[
                            SmallCircularProgressIndicator()
                          ],
                          const DividerDefault(),
                          RoundedButton(
                            height: 35,
                            width: screenWidthByScalar(context, 1.0),
                            text: 'Save',
                            onPressed: () {
                              widget.formBloc.add(ItemFormEvent.saved(
                                  widget.category.uid, widget.group.uid));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
