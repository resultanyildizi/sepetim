import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_group_failure.freezed.dart';

@freezed
abstract class ItemGroupFailure with _$ItemGroupFailure {
  const factory ItemGroupFailure.unexpected() = _Unexpected;
  const factory ItemGroupFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ItemGroupFailure.unableToUpdate() = _UnableToUpdate;
  const factory ItemGroupFailure.networkException() = _NetworkException;
}
