import 'package:Sepetim/infrastructure/core/cloud_function_caller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/i_group_repository.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/item_group/item_group_failure.dart';
import 'package:Sepetim/infrastructure/item_group/item_group_dtos.dart';
import 'package:Sepetim/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: IItemGroupRepository)
class ItemGroupRepository implements IItemGroupRepository {
  final FirebaseFirestore _firestore;

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

      final userId = await _firestore.userId();
      final categoryDoc =
          _firestore.categoryCollection.doc(categoryId.getOrCrash());

      final groupDto = ItemGroupDto.fromDomain(group);

      await categoryDoc.groupCollection
          .doc(groupDto.uid)
          .set(groupDto.toJson());

      await callCloudFunction(
        functionName: 'changeGroupCount',
        data: <String, String>{
          'userId': userId,
          'categoryId': categoryId.getOrCrash(),
          'operation': 'increase',
        },
      );

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ItemGroupFailure.insufficientPermission());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    } on PlatformException catch (_) {
      return left(const ItemGroupFailure.unexpected());
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

      final categoryDoc =
          _firestore.categoryCollection.doc(categoryId.getOrCrash());

      final groupDto = ItemGroupDto.fromDomain(group);

      await categoryDoc.groupCollection
          .doc(groupDto.uid)
          .update(groupDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ItemGroupFailure.insufficientPermission());
      } else if (e.code == 'not-found') {
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
      final userId = await _firestore.userId();
      final groupId = group.uid;

      await Future.wait(
        <Future>[
          callCloudFunction(
            functionName: 'clearData',
            data: <String, String>{
              "userId": userId,
              "categoryId": categoryId.getOrCrash(),
              "groupId": groupId.getOrCrash(),
            },
          ),
          callCloudFunction(
            functionName: 'changeGroupCount',
            data: <String, String>{
              'userId': userId,
              'categoryId': categoryId.getOrCrash(),
              'operation': 'decrease',
            },
          ),
        ],
      );

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ItemGroupFailure.insufficientPermission());
      } else if (e.code == 'not-found') {
        return left(const ItemGroupFailure.unableToUpdate());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    } on PlatformException catch (e) {
      if (e.code == "ERROR_INSUFFICIENT_PERMISSION") {
        return left(const ItemGroupFailure.insufficientPermission());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ItemGroupFailure, KtList<ItemGroup>>> watchAll(
      UniqueId categoryId, OrderType orderType) async* {
    final categoryDoc =
        _firestore.categoryCollection.doc(categoryId.getOrCrash());

    Stream<QuerySnapshot> orderedGroupSnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedGroupSnapshots = categoryDoc.groupCollection
              .orderBy('creationTime', descending: true)
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
            .docs
            .map((doc) => ItemGroupDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.code == 'permission-denied') {
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
    final categoryDoc =
        _firestore.categoryCollection.doc(categoryId.getOrCrash());

    Stream<QuerySnapshot> orderedGroupSnapshots;

    switch (orderType) {
      case OrderType.date:
        {
          orderedGroupSnapshots = categoryDoc.groupCollection
              .orderBy('creationTime', descending: true)
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
        .map((snapshot) => snapshot.docs
            .map((doc) => ItemGroupDto.fromFirestore(doc).toDomain()))
        .map((groups) => right<ItemGroupFailure, KtList<ItemGroup>>(groups
            .where((group) => group.title
                .getOrCrash()
                .toLowerCase()
                .startsWith(title.toLowerCase()))
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.code == 'permission-denied') {
        return left(const ItemGroupFailure.insufficientPermission());
      } else {
        return left(const ItemGroupFailure.unexpected());
      }
    });
  }
}
