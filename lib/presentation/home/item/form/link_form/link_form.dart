import 'package:Sepetim/presentation/core/widgets/action_popups.dart';
import 'package:Sepetim/presentation/home/item/form/link_form/widgets/text_fields.dart';
import 'package:Sepetim/presentation/home/item/form/misc/link_object_primitive.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:Sepetim/application/item/actor/item_actor_bloc.dart';
import 'package:Sepetim/application/item/form/item_form_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/item.dart';
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
import 'package:Sepetim/presentation/home/item/form/misc/build_context_helper.dart';
import 'package:dartz/dartz.dart' as dartz;

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
  bool isItemChanged = false;
  Item oldItem;

  @override
  void initState() {
    oldItem = widget.formBloc.state.item.copyWith();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemFormBloc, ItemFormState>(
      bloc: widget.formBloc,
      listener: (context, state) {
        state.itemFailureOrSuccessOption.fold(() => {}, (either) {
          either.fold(
            (_) {},
            (r) {
              isItemChanged = false;
            },
          );
        });
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            bool willPop = false;
            if (isItemChanged) {
              actionPopup(context,
                  backgroundColor: Colors.white,
                  title: Text(
                    translate(context, 'discard_changes_title'),
                    style: didactGothicTextStyle(),
                  ),
                  content: Text(
                    translate(context, 'discard_changes_message'),
                  ),
                  actions: [
                    RoundedButton(
                      text: translate(context, 'yes'),
                      onPressed: () {
                        widget.formBloc.add(
                            ItemFormEvent.initialized(dartz.some(oldItem)));
                        ExtendedNavigator.of(context).pop();
                        ExtendedNavigator.of(context).pop();
                      },
                    ),
                    RoundedButton(
                      text: translate(context, 'no'),
                      onPressed: () {
                        ExtendedNavigator.of(context).pop();
                        willPop = false;
                      },
                    ),
                  ]);
            } else {
              willPop = true;
            }
            return willPop;
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
                      style: didactGothicTextStyle(fontSize: 18.0),
                    ),
                    LinkTitleTextField(
                      textEdiginController: titleTextEditingController,
                      formBloc: widget.formBloc,
                    ),
                    Text(
                      translate(context, 'url'),
                      style: didactGothicTextStyle(fontSize: 18.0),
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
                          addLinkObject(state, context);
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
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height - 475,
                      ),
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
                              icon: const Icon(
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
                              deletePopup(
                                context,
                                title: translate(context, 'delete_link_title'),
                                message:
                                    translate(context, 'delete_link_message'),
                                action: () => deleteLinkObject(context, index),
                              );
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
                            text: translate(context, 'save'),
                            onPressed: () {
                              widget.formBloc.add(
                                ItemFormEvent.saved(
                                    widget.category.uid, widget.group.uid),
                              );
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

  void addLinkObject(ItemFormState state, BuildContext context) {
    final title = ShortTitle(titleTextEditingController.text.trim());
    final link = Link(urlTextEditingController.text.trim());

    if (title.isValid && link.isValid) {
      if (!state.item.linkObjects.isFull) {
        context.formLinks = context.formLinks.plusElement(
          LinkObjectPrimitive(
            uid: UniqueId(),
            title: title.getOrCrash(),
            link: link.getOrCrash(),
          ),
        );
        widget.formBloc
            .add(ItemFormEvent.linkObjectsChanged(context.formLinks));
        isItemChanged = true;
      } else {
        actionPopup(
          context,
          backgroundColor: Colors.white,
          title: Text(
            translate(context, 'link_adding_limit_title'),
            style: didactGothicTextStyle(),
          ),
          content: Text(
            translate(context, 'link_adding_limit_message'),
          ),
          barrierDismissible: true,
          actions: [
            RoundedButton(
              text: translate(context, 'okay'),
              onPressed: () {
                ExtendedNavigator.of(context).pop();
              },
            ),
          ],
        );
      }
    } else {
      setState(() {
        showErrorMessages = true;
      });
    }
  }

  void deleteLinkObject(BuildContext context, int index) {
    final linkObjectPrimitive = context.formLinks.elementAt(index);
    context.formLinks = context.formLinks.minusElement(linkObjectPrimitive);
    widget.formBloc.add(ItemFormEvent.linkObjectsChanged(context.formLinks));
    isItemChanged = true;
  }
}
