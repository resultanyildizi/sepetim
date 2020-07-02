import 'package:Sepetim/domain/category/category_failure.dart';
import 'package:Sepetim/domain/category/category.dart';
import 'package:Sepetim/domain/category/i_category_repository.dart';
import 'package:Sepetim/infrastructure/category/category_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:Sepetim/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final Firestore _firestore;

  CategoryRepository(this._firestore);

  @override
  Future<Either<CategoryFailure, Unit>> create(Category category) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<CategoryFailure, Unit>> delete(Category category) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<CategoryFailure, Unit>> loadCoverPictureToServer() {
    // TODO: implement loadCoverPictureToServer
    throw UnimplementedError();
  }

  @override
  Future<Either<CategoryFailure, Unit>> removeCoverPictureFromServer() {
    // TODO: implement removeCoverPictureFromServer
    throw UnimplementedError();
  }

  @override
  Future<Either<CategoryFailure, Unit>> update(Category category) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<CategoryFailure, KtList<Category>>> watchAll(
      OrderType orderType) async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.categoryCollection
        .orderBy('title')
        .snapshots()
        .map((snapshot) => right<CategoryFailure, KtList<Category>>(snapshot
            .documents
            .map((doc) => CategoryDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailure.insufficientPermission());
      } else {
        return left(const CategoryFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<CategoryFailure, KtList<Category>>> watchByTitle(String title) {
    // TODO: implement watchByTitle
    throw UnimplementedError();
  }
}
