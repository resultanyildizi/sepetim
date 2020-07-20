import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
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
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IItemRepository)
class ItemRepository extends IItemRepository {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ItemRepository(
    this._firestore,
    this._firebaseStorage,
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
  Future<Either<ItemFailure, File>> loadCoverPictureFromDevice(
      ImageSource imageSource) {
    // TODO: implement loadCoverPictureFromDevice
    throw UnimplementedError();
  }

  @override
  Future<Either<ItemFailure, ImageUrl>> loadCoverPictureToServer(
      Item item, File imageFile) {
    // TODO: implement loadCoverPictureToServer
    throw UnimplementedError();
  }

  @override
  Future<Either<ItemFailure, ImageUrl>> removeCoverPictureFromServer(
      Item item) {
    // TODO: implement removeCoverPictureFromServer
    throw UnimplementedError();
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
