import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/link_object/link_object.dart';
import 'package:Sepetim/domain/link_object/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_object_primitive.freezed.dart';

@freezed
abstract class LinkObjectPrimitive implements _$LinkObjectPrimitive {
  const LinkObjectPrimitive._();
  const factory LinkObjectPrimitive({
    @required UniqueId uid,
    @required String title,
    @required String link,
  }) = _LinkObjectPrimitive;

  factory LinkObjectPrimitive.empty() => LinkObjectPrimitive(
        uid: UniqueId(),
        title: '',
        link: '',
      );

  factory LinkObjectPrimitive.fromDomain(LinkObject linkObject) =>
      LinkObjectPrimitive(
        uid: linkObject.uid,
        title: linkObject.title.getOrCrash(),
        link: linkObject.link.getOrCrash(),
      );

  LinkObject toDomain() => LinkObject(
        uid: uid,
        title: ShortTitle(title),
        link: Link(link),
      );
}
