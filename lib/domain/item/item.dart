import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:Sepetim/domain/link_object/link_object.dart';
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
    @required List3<ImageUrl> imageUrls,
    @required SelectedIndex selectedIndex,
    @required List5<LinkObject> linkObjects,
    @required bool isFavorite,
  }) = _Item;

  factory Item.empty() => Item(
        uid: UniqueId(),
        title: ShortTitle(''),
        price: Price('0.0'),
        description: DescriptionBody(''),
        imageUrls: List3([
          ImageUrl.defaultUrl(),
          ImageUrl.defaultUrl(),
          ImageUrl.defaultUrl()
        ].toImmutableList()),
        selectedIndex: SelectedIndex(0),
        linkObjects: List5(KtList.empty()),
        isFavorite: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(selectedIndex.failureOrUnit)
        .andThen(imageUrls.failureOrUnit)
        .andThen(imageUrls
            .getOrCrash()
            .map((imagePath) => imagePath.failureOrUnit)
            .filter((o) => o.isLeft())
            .getOrElse(0, (_) => right(unit))
            .fold((l) => left(l), (r) => right(r)))
        .fold((f) => some(f), (_) => none());
  }
}
