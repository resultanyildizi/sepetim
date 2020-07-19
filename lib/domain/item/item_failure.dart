import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_failure.freezed.dart';

@freezed
abstract class ItemFailure with _$ItemFailure {
  const factory ItemFailure.unexpected() = _Unexpected;
  const factory ItemFailure.insufficientPermission() = _InsufficientPermission;
  const factory ItemFailure.unableToUpdate() = _UnableToUpdate;
  const factory ItemFailure.imageLoadCanceled() = _ImageLoadCanceled;
  const factory ItemFailure.networkException() = _NetworkExcepiton;
}
