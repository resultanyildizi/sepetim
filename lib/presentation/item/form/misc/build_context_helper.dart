import 'package:Sepetim/presentation/item/form/misc/form_link_objects.dart';
import 'package:Sepetim/presentation/item/form/misc/link_object_primitive.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

extension FormLinkObjectX on BuildContext {
  KtList<LinkObjectPrimitive> get formLinks =>
      Provider.of<FormLinkObjects>(this, listen: false).value;

  set formLinks(KtList<LinkObjectPrimitive> value) =>
      Provider.of<FormLinkObjects>(this, listen: false).value = value;
}
