import 'package:Sepetim/domain/category/category.dart';
import 'package:Sepetim/domain/category/category_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

enum OrderType {
  date,
  title,
}

abstract class ICategoryRepository {
  Future<Either<CategoryFailure, Unit>> create(Category category);
  Future<Either<CategoryFailure, Unit>> update(Category category);
  Future<Either<CategoryFailure, Unit>> delete(Category category);

  // TODO: Determine the exact function declarations
  Future<Either<CategoryFailure, Unit>> loadCoverPictureToServer();
  Future<Either<CategoryFailure, Unit>> removeCoverPictureFromServer();

  Stream<Either<CategoryFailure, KtList<Category>>> watchAll(
      OrderType orderType);
  Stream<Either<CategoryFailure, KtList<Category>>> watchByTitle(String title);
}
