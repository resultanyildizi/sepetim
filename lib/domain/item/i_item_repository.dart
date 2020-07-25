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
    UniqueId categoryId,
    UniqueId groupId,
    Item item,
  );
  Future<Either<ItemFailure, Unit>> update(
    UniqueId categoryId,
    UniqueId groupId,
    Item item,
  );
  Future<Either<ItemFailure, Unit>> delete(
    UniqueId categoryId,
    UniqueId groupId,
    Item item,
  );

  Future<Either<ItemFailure, File>> loadPictureFromDevice(
    ImageSource imageSource,
  );
  Future<Either<ItemFailure, ImageUrl>> loadPictureToServer(
    Item item,
    File imageFile,
  );
  Future<Either<ItemFailure, ImageUrl>> removePictureFromServer(
    ImageUrl imageUrl,
    Item item,
  );
  Future<Either<ItemFailure, Unit>> removeAllPicturesFromServer(
    Item item,
  );
  Stream<Either<ItemFailure, KtList<Item>>> watchAll(
    UniqueId categoryId,
    UniqueId groupId,
    OrderType orderType,
  );
  Stream<Either<ItemFailure, KtList<Item>>> watchAllByTitle(
    UniqueId categoryId,
    UniqueId groupId,
    OrderType orderType,
    String title,
  );
}
