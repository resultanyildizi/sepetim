import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('item failureOption', () {
    test('should return failure when one of the image path is invalid', () {
      final item = Item(
          uid: UniqueId(),
          title: ShortTitle('Hello'),
          price: Price(4.5),
          status: Status(Status.predefinedStatuses[0]),
          description: DescriptionBody('helllo'),
          isFavorite: true,
          linkObjects: List5(KtList.empty()),
          imagePaths: List3([
            ImagePath('deneme.png'),
            ImagePath('deneme.png'),
            ImagePath('deneme')
          ].toImmutableList()));

      final result = item.failureOption;

      expect(
          result,
          equals(some(
              const ValueFailure.invalidImagePath(failedValue: 'deneme'))));
    });

    test('should return none when all the fields are valid', () {
      final item = Item(
          uid: UniqueId(),
          title: ShortTitle('Hello'),
          price: Price(4.5),
          status: Status(Status.predefinedStatuses[0]),
          description: DescriptionBody('helllo'),
          isFavorite: true,
          linkObjects: List5(KtList.empty()),
          imagePaths: List3([
            ImagePath('deneme.png'),
            ImagePath('deneme.png'),
            ImagePath('deneme.jpeg')
          ].toImmutableList()));

      final result = item.failureOption;

      expect(result, equals(none()));
    });
  });
}
