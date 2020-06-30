import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_object.freezed.dart';

@freezed
abstract class LinkObject implements _$LinkObject {
  const LinkObject._();

  const factory LinkObject({
    @required UniqueId uid,
    @required ShortTitle title,
    @required Link link,
  }) = _LinkObject;

  factory LinkObject.empty() => LinkObject(
        uid: UniqueId(),
        title: ShortTitle(''),
        link: Link(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(link.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
