import 'dart:io';

import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/item_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/kt.dart';

abstract class IItemRepository {
  Future<Either<ItemFailure, Unit>> create(
    Item item,
  );
  Future<Either<ItemFailure, Unit>> update(
    Item item,
  );
  Future<Either<ItemFailure, Unit>> delete(
    Item item,
  );

  Future<Either<ItemFailure, File>> loadCoverPictureFromDevice(
    ImageSource imageSource,
  );
  Future<Either<ItemFailure, ImageUrl>> loadCoverPictureToServer(
    Item category,
    File imageFile,
  );
  Future<Either<ItemFailure, ImageUrl>> removeCoverPictureFromServer(
    Item category,
  );
  Future<Either<ItemFailure, NotNegativeIntegerNumber>> getGroupCount(
    Item category,
  );
  Future<Either<ItemFailure, NotNegativeIntegerNumber>> getItemCount(
    Item category,
  );
  Stream<Either<ItemFailure, KtList<Item>>> watchAll(
    OrderType orderType,
  );
  Stream<Either<ItemFailure, KtList<Item>>> watchAllByTitle(
    OrderType orderType,
    String title,
  );
}
