import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category_failure.freezed.dart';

@freezed
abstract class ItemCategoryFailure with _$ItemCategoryFailure {
  const factory ItemCategoryFailure.unexpected() = _Unexpected;
  const factory ItemCategoryFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ItemCategoryFailure.unableToUpdate() = _UnableToUpdate;
  const factory ItemCategoryFailure.imageLoadCanceled() = _ImageLoadCanceled;
}
