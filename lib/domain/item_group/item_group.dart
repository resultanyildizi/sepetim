import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_group.freezed.dart';

@freezed
abstract class ItemGroup implements _$ItemGroup {
  const ItemGroup._();

  const factory ItemGroup({
    @required UniqueId uid,
    @required ShortTitle title,
  }) = _ItemGroup;

  factory ItemGroup.empty() => ItemGroup(
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
