import 'dart:io';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_category/item_category_failure.dart';
import 'package:Sepetim/infrastructure/item_category/item_category_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/infrastructure/core/firebase_helpers.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:path/path.dart';

@LazySingleton(as: IItemCategoryRepository)
class ItemCategoryRepository implements IItemCategoryRepository {
  final Firestore _firestore;
  final ImagePicker _imagePicker;
  final FirebaseStorage _firebaseStorage;

  ItemCategoryRepository(
    this._firestore,
    this._imagePicker,
    this._firebaseStorage,
  );

  @override
  Future<Either<ItemCategoryFailure, Unit>> create(
      ItemCategory category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto = ItemCategoryDto.fromDomain(category);

      await userDoc.categoryCollection
          .document(categoryDto.uid)
          .setData(categoryDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemCategoryFailure, Unit>> update(
      ItemCategory category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto = ItemCategoryDto.fromDomain(category);

      await userDoc.categoryCollection
          .document(categoryDto.uid)
          .updateData(categoryDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemCategoryFailure.unableToUpdate());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemCategoryFailure, Unit>> delete(
      ItemCategory category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryUid = category.uid.getOrCrash();

      await userDoc.categoryCollection.document(categoryUid).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemCategoryFailure.unableToUpdate());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    }
  }

  // TODO: try to translate 'crop image' text
  @override
  Future<Either<ItemCategoryFailure, File>> loadCoverPictureFromDevice(
      ImageSource imageSource) async {
    try {
      final pickedFile =
          await _imagePicker.getImage(source: imageSource, imageQuality: 70);

      if (pickedFile != null) {
        final _croppedImage = await ImageCropper.cropImage(
          sourcePath: pickedFile.path,
          cropStyle: CropStyle.circle,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
          ],
          androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: sepetimYellow,
            toolbarWidgetColor: Colors.white,
            cropFrameColor: Colors.transparent,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true,
            showCropGrid: false,
            hideBottomControls: true,
          ),
        );

        return right(_croppedImage);
      } else {
        return left(const ItemCategoryFailure.imageLoadCanceled());
      }
    } catch (e) {
      return left(const ItemCategoryFailure.unexpected());
    }
  }

  // TODO: handle network errors specifically
  @override
  Future<Either<ItemCategoryFailure, ImageUrl>> loadCoverPictureToServer(
      ItemCategory category, File imageFile) async {
    try {
      final userStorage = await _firebaseStorage.userStorage();
      final categoryUid = category.uid.getOrCrash();

      final coverImageStorage = userStorage.categoryCovers
          .child(categoryUid + extension(imageFile.path));

      coverImageStorage.putFile(imageFile);
      final coverImageDownloadUrl = await coverImageStorage.getDownloadURL();
      return right(ImageUrl(coverImageDownloadUrl.toString()));
    } on PlatformException catch (e) {
      print(e.message);
      return left(const ItemCategoryFailure.unexpected());
    }
  }

  @override
  Future<Either<ItemCategoryFailure, ImageUrl>> removeCoverPictureFromServer(
      ItemCategory category) async {
    // TODO: implement removeCoverPictureFromServer
    throw UnimplementedError();
  }

  @override
  Stream<Either<ItemCategoryFailure, KtList<ItemCategory>>> watchAll(
      OrderType orderType) async* {
    final userDoc = await _firestore.userDocument();

    Stream<QuerySnapshot> orderedCategorySnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedCategorySnapshots = userDoc.categoryCollection.snapshots();
          break;
        }
      case OrderType.title:
        {
          orderedCategorySnapshots =
              userDoc.categoryCollection.orderBy('title').snapshots();
          break;
        }
      default:
        {
          orderedCategorySnapshots = userDoc.categoryCollection.snapshots();
          break;
        }
    }

    yield* orderedCategorySnapshots
        .map((snapshot) => right<ItemCategoryFailure, KtList<ItemCategory>>(
            snapshot.documents
                .map((doc) => ItemCategoryDto.fromFirestore(doc).toDomain())
                .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ItemCategoryFailure, KtList<ItemCategory>>> watchByTitle(
      OrderType orderType, String title) async* {
    final userDoc = await _firestore.userDocument();

    Stream<QuerySnapshot> orderedCategorySnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedCategorySnapshots = userDoc.categoryCollection.snapshots();
          break;
        }
      case OrderType.title:
        {
          orderedCategorySnapshots =
              userDoc.categoryCollection.orderBy('title').snapshots();
          break;
        }
      default:
        {
          orderedCategorySnapshots = userDoc.categoryCollection.snapshots();
          break;
        }
    }

    yield* orderedCategorySnapshots
        .map((snapshot) => snapshot.documents
            .map((doc) => ItemCategoryDto.fromFirestore(doc).toDomain()))
        .map((categories) => right<ItemCategoryFailure, KtList<ItemCategory>>(
            categories
                .where(
                    (category) => category.title.getOrCrash().contains(title))
                .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    });
  }
}
