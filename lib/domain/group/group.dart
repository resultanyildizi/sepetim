import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

@freezed
abstract class Group implements _$Group {
  const Group._();
  // TODO: add date

  const factory Group({
    @required UniqueId uid,
    @required ShortTitle title,
  }) = _Group;

  factory Group.empty() => Group(
        uid: UniqueId(),
        title: ShortTitle(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
