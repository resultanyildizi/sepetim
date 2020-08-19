import 'dart:io';

import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/i_item_repository.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/item_failure.dart';
import 'package:Sepetim/infrastructure/core/firebase_helpers.dart';
import 'package:Sepetim/infrastructure/item/item_dtos.dart';
import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IItemRepository)
class ItemRepository extends IItemRepository {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final ImagePicker _imagePicker;

  ItemRepository(
    this._firestore,
    this._firebaseStorage,
    this._imagePicker,
  );

  @override
  Future<Either<ItemFailure, Unit>> create(
      UniqueId categoryId, UniqueId groupId, Item item) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemFailure.networkException());
      }

      final userDoc = await _firestore.userDocument();
      final categoryDoc =
          userDoc.categoryCollection.document(categoryId.getOrCrash());
      final groupDoc =
          categoryDoc.groupCollection.document(groupId.getOrCrash());

      final itemDto = ItemDto.fromDomain(item);

      await groupDoc.itemCollection
          .document(itemDto.uid)
          .setData(itemDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemFailure.insufficientPermission());
      } else {
        return left(const ItemFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemFailure, Unit>> update(
      UniqueId categoryId, UniqueId groupId, Item item) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemFailure.networkException());
      }

      final userDoc = await _firestore.userDocument();
      final categoryDoc =
          userDoc.categoryCollection.document(categoryId.getOrCrash());
      final groupDoc =
          categoryDoc.groupCollection.document(groupId.getOrCrash());

      final itemDto = ItemDto.fromDomain(item);

      await groupDoc.itemCollection
          .document(itemDto.uid)
          .updateData(itemDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemFailure.unableToUpdate());
      } else {
        return left(const ItemFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemFailure, Unit>> delete(
      UniqueId categoryId, UniqueId groupId, Item item) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemFailure.networkException());
      }

      final userDoc = await _firestore.userDocument();
      final categoryDoc =
          userDoc.categoryCollection.document(categoryId.getOrCrash());
      final groupDoc =
          categoryDoc.groupCollection.document(groupId.getOrCrash());

      final itemId = item.uid.getOrCrash();

      await groupDoc.itemCollection.document(itemId).delete();

      final removeFailureOrSuccess = await removeAllPicturesFromServer(item);

      return removeFailureOrSuccess.fold(
        (f) => left(f),
        (_) => right(unit),
      );
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemFailure.unableToUpdate());
      } else {
        return left(const ItemFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemFailure, File>> loadPictureFromDevice(
      ImageSource imageSource) async {
    try {
      final pickedFile = await _imagePicker.getImage(
        source: imageSource,
        maxWidth: 1536,
        maxHeight: 1536,
      );

      if (pickedFile != null) {
        final _croppedImage = await ImageCropper.cropImage(
          sourcePath: pickedFile.path,
          compressQuality: 85,
          aspectRatio: const CropAspectRatio(ratioX: 6, ratioY: 9),
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
          return left(const ItemFailure.imageLoadCanceled());
        }
      } else {
        return left(const ItemFailure.imageLoadCanceled());
      }
    } catch (e) {
      return left(const ItemFailure.unexpected());
    }
  }

  @override
  Future<Either<ItemFailure, ImageUrl>> loadPictureToServer(
    Item item,
    File imageFile,
  ) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemFailure.networkException());
      }
      final userStorage = await _firebaseStorage.userStorage();
      final itemId = item.uid.getOrCrash();
      final imageId = UniqueId().getOrCrash();

      final itemPictureStorage = userStorage.imagePictures
          .child(itemId)
          .child(imageId + extension(imageFile.path));

      final uploadTask = itemPictureStorage.putFile(imageFile);

      await uploadTask.onComplete;

      final itemPictureDownloadUrl = await itemPictureStorage.getDownloadURL();

      return right(ImageUrl(itemPictureDownloadUrl.toString()));
    } on PlatformException catch (_) {
      return left(const ItemFailure.unexpected());
    }
  }

  @override
  Future<Either<ItemFailure, ImageUrl>> removePictureFromServer(
    ImageUrl imageUrl,
    Item item,
  ) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemFailure.networkException());
      }

      final imagePictureUrl = imageUrl.getOrCrash();
      if (imagePictureUrl != ImageUrl.defaultUrl().getOrCrash()) {
        final imagePictureStorage =
            await _firebaseStorage.getReferenceFromUrl(imagePictureUrl);

        await imagePictureStorage.delete();
      }
      return right(ImageUrl.defaultUrl());
    } on PlatformException catch (_) {
      return left(const ItemFailure.unexpected());
    }
  }

  @override
  Future<Either<ItemFailure, Unit>> removeAllPicturesFromServer(
    Item item,
  ) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemFailure.networkException());
      }

      item.imageUrls
          .getOrCrash()
          .map((imageUrl) => removePictureFromServer(imageUrl, item));

      return right(unit);
    } on PlatformException catch (_) {
      return left(const ItemFailure.unexpected());
    }
  }

  @override
  Stream<Either<ItemFailure, KtList<Item>>> watchAll(
      UniqueId categoryId, UniqueId groupId, OrderType orderType) async* {
    final userDoc = await _firestore.userDocument();
    final categoryDoc =
        userDoc.categoryCollection.document(categoryId.getOrCrash());
    final groupDoc = categoryDoc.groupCollection.document(groupId.getOrCrash());

    Stream<QuerySnapshot> orderedItemSnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedItemSnapshots = groupDoc.itemCollection
              .orderBy('lastEditTime', descending: true)
              .snapshots();
          break;
        }
      case OrderType.title:
        {
          orderedItemSnapshots =
              groupDoc.itemCollection.orderBy('title').snapshots();
          break;
        }
      default:
        {
          orderedItemSnapshots = groupDoc.itemCollection.snapshots();
          break;
        }
    }

    yield* orderedItemSnapshots
        .map((snapshot) => right<ItemFailure, KtList<Item>>(snapshot.documents
            .map((doc) => ItemDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemFailure.insufficientPermission());
      } else {
        return left(const ItemFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ItemFailure, KtList<Item>>> watchAllByTitle(UniqueId categoryId,
      UniqueId groupId, OrderType orderType, String title) async* {
    final userDoc = await _firestore.userDocument();
    final categoryDoc =
        userDoc.categoryCollection.document(categoryId.getOrCrash());
    final groupDoc = categoryDoc.groupCollection.document(groupId.getOrCrash());

    Stream<QuerySnapshot> orderedItemSnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedItemSnapshots = groupDoc.itemCollection
              .orderBy('serverTimeStamp', descending: true)
              .snapshots();
          break;
        }
      case OrderType.title:
        {
          orderedItemSnapshots =
              groupDoc.itemCollection.orderBy('title').snapshots();
          break;
        }
      default:
        {
          orderedItemSnapshots = groupDoc.itemCollection.snapshots();
          break;
        }
    }
    yield* orderedItemSnapshots
        .map((snapshot) => snapshot.documents
            .map((doc) => ItemDto.fromFirestore(doc).toDomain()))
        .map((items) => right<ItemFailure, KtList<Item>>(items
            .where((item) => item.title
                .getOrCrash()
                .toLowerCase()
                .startsWith(title.toLowerCase()))
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemFailure.insufficientPermission());
      } else {
        return left(const ItemFailure.unexpected());
      }
    });
  }
}
