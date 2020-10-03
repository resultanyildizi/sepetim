import 'dart:io';

import 'package:Sepetim/infrastructure/item_group/item_group_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:path/path.dart' as p;
import 'package:rxdart/rxdart.dart';

import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_category/i_category_repository.dart';
import 'package:Sepetim/domain/item_category/item_category.dart';
import 'package:Sepetim/domain/item_category/item_category_failure.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/infrastructure/core/firebase_helpers.dart';
import 'package:Sepetim/infrastructure/item_category/item_category_dtos.dart';
import 'package:Sepetim/predefined_variables/colors.dart';

@LazySingleton(as: IItemCategoryRepository)
class ItemCategoryRepository implements IItemCategoryRepository {
  final FirebaseFirestore _firestore;
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
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemCategoryFailure.networkException());
      }
      final userDoc = await _firestore.userDocument();
      final categoryDto = ItemCategoryDto.fromDomain(category);

      await userDoc.categoryCollection
          .doc(categoryDto.uid)
          .set(categoryDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
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
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemCategoryFailure.networkException());
      }

      final userDoc = await _firestore.userDocument();
      final categoryDto = ItemCategoryDto.fromDomain(category);

      await userDoc.categoryCollection
          .doc(categoryDto.uid)
          .update(categoryDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else if (e.code == 'not-found') {
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
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemCategoryFailure.networkException());
      }
      final categoryId = category.uid;
      final userDoc = await _firestore.userDocument();

      final deleteItemFunction =
          CloudFunctions.instance.getHttpsCallable(functionName: "clearData");

      final result = await deleteItemFunction.call(<String, String>{
        "userId": userDoc.id,
        "categoryId": categoryId.getOrCrash(),
      });

      if (result != null &&
          result.data != null &&
          result.data["type"] == "success") {
        return right(unit);
      } else {
        throw PlatformException(
          code: result.data["code"].toString(),
          message: "Error occured when cloud function running. Error was: " +
              result.data["message"].toString(),
        );
      }
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else if (e.code == 'not-found') {
        return left(const ItemCategoryFailure.unableToUpdate());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    } on PlatformException catch (e) {
      if (e.code == "ERROR_INSUFFICIENT_PERMISSION") {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemCategoryFailure, File>> loadCoverPictureFromDevice(
      ImageSource imageSource) async {
    try {
      final pickedFile = await _imagePicker.getImage(
        source: imageSource,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 90,
      );

      if (pickedFile != null) {
        final _croppedImage = await ImageCropper.cropImage(
          sourcePath: pickedFile.path,
          cropStyle: CropStyle.circle,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
          ],
          compressQuality: 20,
          androidUiSettings: const AndroidUiSettings(
            toolbarTitle: 'Sepetim',
            toolbarColor: sepetimYellow,
            toolbarWidgetColor: sepetimGrey,
            cropFrameColor: Colors.transparent,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true,
            showCropGrid: false,
            hideBottomControls: true,
          ),
        );
        if (_croppedImage != null) {
          return right(_croppedImage);
        } else {
          return left(const ItemCategoryFailure.imageLoadCanceled());
        }
      } else {
        return left(const ItemCategoryFailure.imageLoadCanceled());
      }
    } catch (e) {
      return left(const ItemCategoryFailure.unexpected());
    }
  }

  @override
  Future<Either<ItemCategoryFailure, ImageUrl>> loadCoverPictureToServer(
      ItemCategory category, File imageFile) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemCategoryFailure.networkException());
      }
      final userStorage = await _firebaseStorage.userStorage();
      final categoryUid = category.uid.getOrCrash();

      final coverImageStorage = userStorage
          .child(categoryUid)
          .child(categoryUid + p.extension(imageFile.path));

      final uploadTask = coverImageStorage.putFile(imageFile);

      await uploadTask.onComplete;

      final coverImageDownloadUrl = await coverImageStorage.getDownloadURL();

      return right(ImageUrl(coverImageDownloadUrl.toString()));
    } on PlatformException catch (e) {
      if (e.message.contains("permission")) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemCategoryFailure, ImageUrl>> removeCoverPictureFromServer(
      ItemCategory category) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemCategoryFailure.networkException());
      }

      final categoryCoverImageUrl = category.coverImageUrl.getOrCrash();
      if (categoryCoverImageUrl != ImageUrl.defaultUrl().getOrCrash()) {
        final coverImageStorage =
            await _firebaseStorage.getReferenceFromUrl(categoryCoverImageUrl);

        await coverImageStorage.delete();
      }
      return right(ImageUrl.defaultUrl());
    } on PlatformException catch (e) {
      if (e.message.contains("permission")) {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ItemCategoryFailure, KtList<ItemCategory>>> watchAll(
      OrderType orderType) async* {
    final userDoc = await _firestore.userDocument();

    Stream<QuerySnapshot> orderedCategorySnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedCategorySnapshots = userDoc.categoryCollection
              .orderBy('creationTime', descending: true)
              .snapshots();
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
            snapshot.docs
                .map((doc) => ItemCategoryDto.fromFirestore(doc).toDomain())
                .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.code == 'permission-denied') {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ItemCategoryFailure, KtList<ItemCategory>>> watchAllByTitle(
      OrderType orderType, String title) async* {
    final userDoc = await _firestore.userDocument();

    Stream<QuerySnapshot> orderedCategorySnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedCategorySnapshots = userDoc.categoryCollection
              .orderBy('serverTimeStamp', descending: true)
              .snapshots();
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
        .map((snapshot) => snapshot.docs
            .map((doc) => ItemCategoryDto.fromFirestore(doc).toDomain()))
        .map((categories) => right<ItemCategoryFailure, KtList<ItemCategory>>(
            categories
                .where((category) => category.title
                    .getOrCrash()
                    .toLowerCase()
                    .startsWith(title.toLowerCase()))
                .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.code == 'permission-denied') {
        return left(const ItemCategoryFailure.insufficientPermission());
      } else {
        return left(const ItemCategoryFailure.unexpected());
      }
    });
  }
}
