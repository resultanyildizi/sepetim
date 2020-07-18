import 'package:Sepetim/domain/core/enums.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item_group/item_group.dart';
import 'package:Sepetim/domain/item_group/item_group_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IItemGroupRepository {
  Future<Either<ItemGroupFailure, Unit>> create(
    UniqueId categoryId,
    ItemGroup group,
  );

  Future<Either<ItemGroupFailure, Unit>> update(
    UniqueId categoryId,
    ItemGroup group,
  );

  Future<Either<ItemGroupFailure, Unit>> delete(
    UniqueId categoryId,
    ItemGroup group,
  );

  Stream<Either<ItemGroupFailure, KtList<ItemGroup>>> watchAll(
    UniqueId categoryId,
    OrderType orderType,
  );

  Stream<Either<ItemGroupFailure, KtList<ItemGroup>>> watchAllByTitle(
    UniqueId categoryId,
    OrderType orderType,
    String title,
  );
}
