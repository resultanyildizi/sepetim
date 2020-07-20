import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/infrastructure/item_group/item_group_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:Sepetim/domain/item_group/item_group_failure.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:Sepetim/infrastructure/core/firebase_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IItemGroupRepository)
class ItemGroupRepository implements IItemGroupRepository {
  final Firestore _firestore;

  ItemGroupRepository(
    this._firestore,
  );

  @override
  Future<Either<ItemGroupFailure, Unit>> create(
      UniqueId categoryId, ItemGroup group) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemGroupFailure.networkException());
      }

      final userDoc = await _firestore.userDocument();
      final categoryDoc =
          userDoc.categoryCollection.document(categoryId.getOrCrash());

      final groupDto = ItemGroupDto.fromDomain(group);

      await categoryDoc.groupCollection
          .document(groupDto.uid)
          .setData(groupDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemGroupFailure.insufficientPermission());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemGroupFailure, Unit>> update(
      UniqueId categoryId, ItemGroup group) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemGroupFailure.networkException());
      }

      final userDoc = await _firestore.userDocument();
      final categoryDoc =
          userDoc.categoryCollection.document(categoryId.getOrCrash());

      final groupDto = ItemGroupDto.fromDomain(group);

      await categoryDoc.groupCollection
          .document(groupDto.uid)
          .updateData(groupDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemGroupFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemGroupFailure.unableToUpdate());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemGroupFailure, Unit>> delete(
      UniqueId categoryId, ItemGroup group) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult != ConnectivityResult.mobile &&
          connectivityResult != ConnectivityResult.wifi) {
        return left(const ItemGroupFailure.networkException());
      }
      final userDoc = await _firestore.userDocument();
      final categoryDoc =
          userDoc.categoryCollection.document(categoryId.getOrCrash());
      final groupId = group.uid.getOrCrash();

      await categoryDoc.groupCollection.document(groupId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemGroupFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemGroupFailure.unableToUpdate());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ItemGroupFailure, KtList<ItemGroup>>> watchAll(
      UniqueId categoryId, OrderType orderType) async* {
    final userDoc = await _firestore.userDocument();
    final categoryDoc =
        userDoc.categoryCollection.document(categoryId.getOrCrash());

    Stream<QuerySnapshot> orderedGroupSnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedGroupSnapshots = categoryDoc.groupCollection
              .orderBy('serverTimeStamp', descending: true)
              .snapshots();
          break;
        }
      case OrderType.title:
        {
          orderedGroupSnapshots =
              categoryDoc.groupCollection.orderBy('title').snapshots();
          break;
        }
      default:
        {
          orderedGroupSnapshots = categoryDoc.groupCollection.snapshots();
          break;
        }
    }

    yield* orderedGroupSnapshots
        .map((snapshot) => right<ItemGroupFailure, KtList<ItemGroup>>(snapshot
            .documents
            .map((doc) => ItemGroupDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemGroupFailure.insufficientPermission());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ItemGroupFailure, KtList<ItemGroup>>> watchAllByTitle(
    UniqueId categoryId,
    OrderType orderType,
    String title,
  ) async* {
    final userDoc = await _firestore.userDocument();
    final categoryDoc =
        userDoc.categoryCollection.document(categoryId.getOrCrash());

    Stream<QuerySnapshot> orderedGroupSnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedGroupSnapshots = categoryDoc.groupCollection
              .orderBy('serverTimeStamp', descending: true)
              .snapshots();
          break;
        }
      case OrderType.title:
        {
          orderedGroupSnapshots =
              categoryDoc.groupCollection.orderBy('title').snapshots();
          break;
        }
      default:
        {
          orderedGroupSnapshots = categoryDoc.groupCollection.snapshots();
          break;
        }
    }

    yield* orderedGroupSnapshots
        .map((snapshot) => snapshot.documents
            .map((doc) => ItemGroupDto.fromFirestore(doc).toDomain()))
        .map((groups) => right<ItemGroupFailure, KtList<ItemGroup>>(groups
            .where((group) => group.title
                .getOrCrash()
                .toLowerCase()
                .startsWith(title.toLowerCase()))
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemGroupFailure.insufficientPermission());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    });
  }
}
