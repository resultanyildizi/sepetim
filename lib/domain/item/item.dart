import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/link_object.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'item.freezed.dart';

@freezed
abstract class Item implements _$Item {
  const Item._();

  const factory Item({
    @required UniqueId uid,
    @required ShortTitle title,
    @required Price price,
    @required DescriptionBody description,
    @required Status status,
    @required List3<ImagePath> imagePaths,
    @required List5<LinkObject> linkObjects,
    @required bool isFavorite,
  }) = _Item;

  factory Item.empty() => Item(
        uid: UniqueId(),
        title: ShortTitle(''),
        price: Price(0.0),
        description: DescriptionBody(''),
        status: Status(Status.predefinedStatuses[0]),
        imagePaths: List3([
          ImagePath.defaultPath(),
          ImagePath.defaultPath(),
          ImagePath.defaultPath()
        ].toImmutableList()),
        linkObjects: List5(KtList.empty()),
        isFavorite: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(status.failureOrUnit)
        .andThen(imagePaths.failureOrUnit)
        .andThen(imagePaths
            .getOrCrash()
            .map((imagePath) => imagePath.failureOrUnit)
            .filter((o) => o.isLeft())
            .getOrElse(0, (_) => right(unit))
            .fold((l) => left(l), (r) => right(r)))
        .fold((f) => some(f), (_) => none());
  }
}
