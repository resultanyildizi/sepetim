import 'dart:ui';

import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_object.dart';
import 'package:Sepetim/domain/item_category/value_transformer.dart';
import 'package:dartz/dartz.dart';

class ItemCategoryColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xFFF28B82),
    Color(0xFFFABD03),
    Color(0xFFFFF476),
    Color(0xFFCDFF90),
    Color(0xFFA7FEEB),
    Color(0xFFAFCBFA),
    Color(0xFFD7AEFC),
    Color(0xFFFDCFE9),
    Color(0xFFA6A6A6),
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  factory ItemCategoryColor(Color input) {
    assert(input != null);
    return ItemCategoryColor._(right(makeColorOpaque(input)));
  }

  const ItemCategoryColor._(this.value);
}
