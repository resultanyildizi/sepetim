// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_category_subcollection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemCategorySubcollectionEventTearOff {
  const _$ItemCategorySubcollectionEventTearOff();

  _ItemCategorySubcollectionEvent getSubcollectionCount(ItemCategory category) {
    return _ItemCategorySubcollectionEvent(
      category,
    );
  }
}

// ignore: unused_element
const $ItemCategorySubcollectionEvent =
    _$ItemCategorySubcollectionEventTearOff();

mixin _$ItemCategorySubcollectionEvent {
  ItemCategory get category;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getSubcollectionCount(ItemCategory category),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getSubcollectionCount(ItemCategory category),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getSubcollectionCount(_ItemCategorySubcollectionEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getSubcollectionCount(_ItemCategorySubcollectionEvent value),
    @required Result orElse(),
  });

  $ItemCategorySubcollectionEventCopyWith<ItemCategorySubcollectionEvent>
      get copyWith;
}

abstract class $ItemCategorySubcollectionEventCopyWith<$Res> {
  factory $ItemCategorySubcollectionEventCopyWith(
          ItemCategorySubcollectionEvent value,
          $Res Function(ItemCategorySubcollectionEvent) then) =
      _$ItemCategorySubcollectionEventCopyWithImpl<$Res>;
  $Res call({ItemCategory category});

  $ItemCategoryCopyWith<$Res> get category;
}

class _$ItemCategorySubcollectionEventCopyWithImpl<$Res>
    implements $ItemCategorySubcollectionEventCopyWith<$Res> {
  _$ItemCategorySubcollectionEventCopyWithImpl(this._value, this._then);

  final ItemCategorySubcollectionEvent _value;
  // ignore: unused_field
  final $Res Function(ItemCategorySubcollectionEvent) _then;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      category:
          category == freezed ? _value.category : category as ItemCategory,
    ));
  }

  @override
  $ItemCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $ItemCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

abstract class _$ItemCategorySubcollectionEventCopyWith<$Res>
    implements $ItemCategorySubcollectionEventCopyWith<$Res> {
  factory _$ItemCategorySubcollectionEventCopyWith(
          _ItemCategorySubcollectionEvent value,
          $Res Function(_ItemCategorySubcollectionEvent) then) =
      __$ItemCategorySubcollectionEventCopyWithImpl<$Res>;
  @override
  $Res call({ItemCategory category});

  @override
  $ItemCategoryCopyWith<$Res> get category;
}

class __$ItemCategorySubcollectionEventCopyWithImpl<$Res>
    extends _$ItemCategorySubcollectionEventCopyWithImpl<$Res>
    implements _$ItemCategorySubcollectionEventCopyWith<$Res> {
  __$ItemCategorySubcollectionEventCopyWithImpl(
      _ItemCategorySubcollectionEvent _value,
      $Res Function(_ItemCategorySubcollectionEvent) _then)
      : super(_value, (v) => _then(v as _ItemCategorySubcollectionEvent));

  @override
  _ItemCategorySubcollectionEvent get _value =>
      super._value as _ItemCategorySubcollectionEvent;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_ItemCategorySubcollectionEvent(
      category == freezed ? _value.category : category as ItemCategory,
    ));
  }
}

class _$_ItemCategorySubcollectionEvent
    implements _ItemCategorySubcollectionEvent {
  const _$_ItemCategorySubcollectionEvent(this.category)
      : assert(category != null);

  @override
  final ItemCategory category;

  @override
  String toString() {
    return 'ItemCategorySubcollectionEvent.getSubcollectionCount(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemCategorySubcollectionEvent &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$ItemCategorySubcollectionEventCopyWith<_ItemCategorySubcollectionEvent>
      get copyWith => __$ItemCategorySubcollectionEventCopyWithImpl<
          _ItemCategorySubcollectionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getSubcollectionCount(ItemCategory category),
  }) {
    assert(getSubcollectionCount != null);
    return getSubcollectionCount(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getSubcollectionCount(ItemCategory category),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSubcollectionCount != null) {
      return getSubcollectionCount(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getSubcollectionCount(_ItemCategorySubcollectionEvent value),
  }) {
    assert(getSubcollectionCount != null);
    return getSubcollectionCount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getSubcollectionCount(_ItemCategorySubcollectionEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSubcollectionCount != null) {
      return getSubcollectionCount(this);
    }
    return orElse();
  }
}

abstract class _ItemCategorySubcollectionEvent
    implements ItemCategorySubcollectionEvent {
  const factory _ItemCategorySubcollectionEvent(ItemCategory category) =
      _$_ItemCategorySubcollectionEvent;

  @override
  ItemCategory get category;
  @override
  _$ItemCategorySubcollectionEventCopyWith<_ItemCategorySubcollectionEvent>
      get copyWith;
}

class _$ItemCategorySubcollectionStateTearOff {
  const _$ItemCategorySubcollectionStateTearOff();

  _ItemCategorySubCollectionState call(
      {@required NotNegativeIntegerNumber groupCount,
      @required NotNegativeIntegerNumber itemCount}) {
    return _ItemCategorySubCollectionState(
      groupCount: groupCount,
      itemCount: itemCount,
    );
  }
}

// ignore: unused_element
const $ItemCategorySubcollectionState =
    _$ItemCategorySubcollectionStateTearOff();

mixin _$ItemCategorySubcollectionState {
  NotNegativeIntegerNumber get groupCount;
  NotNegativeIntegerNumber get itemCount;

  $ItemCategorySubcollectionStateCopyWith<ItemCategorySubcollectionState>
      get copyWith;
}

abstract class $ItemCategorySubcollectionStateCopyWith<$Res> {
  factory $ItemCategorySubcollectionStateCopyWith(
          ItemCategorySubcollectionState value,
          $Res Function(ItemCategorySubcollectionState) then) =
      _$ItemCategorySubcollectionStateCopyWithImpl<$Res>;
  $Res call(
      {NotNegativeIntegerNumber groupCount,
      NotNegativeIntegerNumber itemCount});
}

class _$ItemCategorySubcollectionStateCopyWithImpl<$Res>
    implements $ItemCategorySubcollectionStateCopyWith<$Res> {
  _$ItemCategorySubcollectionStateCopyWithImpl(this._value, this._then);

  final ItemCategorySubcollectionState _value;
  // ignore: unused_field
  final $Res Function(ItemCategorySubcollectionState) _then;

  @override
  $Res call({
    Object groupCount = freezed,
    Object itemCount = freezed,
  }) {
    return _then(_value.copyWith(
      groupCount: groupCount == freezed
          ? _value.groupCount
          : groupCount as NotNegativeIntegerNumber,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount as NotNegativeIntegerNumber,
    ));
  }
}

abstract class _$ItemCategorySubCollectionStateCopyWith<$Res>
    implements $ItemCategorySubcollectionStateCopyWith<$Res> {
  factory _$ItemCategorySubCollectionStateCopyWith(
          _ItemCategorySubCollectionState value,
          $Res Function(_ItemCategorySubCollectionState) then) =
      __$ItemCategorySubCollectionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NotNegativeIntegerNumber groupCount,
      NotNegativeIntegerNumber itemCount});
}

class __$ItemCategorySubCollectionStateCopyWithImpl<$Res>
    extends _$ItemCategorySubcollectionStateCopyWithImpl<$Res>
    implements _$ItemCategorySubCollectionStateCopyWith<$Res> {
  __$ItemCategorySubCollectionStateCopyWithImpl(
      _ItemCategorySubCollectionState _value,
      $Res Function(_ItemCategorySubCollectionState) _then)
      : super(_value, (v) => _then(v as _ItemCategorySubCollectionState));

  @override
  _ItemCategorySubCollectionState get _value =>
      super._value as _ItemCategorySubCollectionState;

  @override
  $Res call({
    Object groupCount = freezed,
    Object itemCount = freezed,
  }) {
    return _then(_ItemCategorySubCollectionState(
      groupCount: groupCount == freezed
          ? _value.groupCount
          : groupCount as NotNegativeIntegerNumber,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount as NotNegativeIntegerNumber,
    ));
  }
}

class _$_ItemCategorySubCollectionState
    implements _ItemCategorySubCollectionState {
  const _$_ItemCategorySubCollectionState(
      {@required this.groupCount, @required this.itemCount})
      : assert(groupCount != null),
        assert(itemCount != null);

  @override
  final NotNegativeIntegerNumber groupCount;
  @override
  final NotNegativeIntegerNumber itemCount;

  @override
  String toString() {
    return 'ItemCategorySubcollectionState(groupCount: $groupCount, itemCount: $itemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemCategorySubCollectionState &&
            (identical(other.groupCount, groupCount) ||
                const DeepCollectionEquality()
                    .equals(other.groupCount, groupCount)) &&
            (identical(other.itemCount, itemCount) ||
                const DeepCollectionEquality()
                    .equals(other.itemCount, itemCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupCount) ^
      const DeepCollectionEquality().hash(itemCount);

  @override
  _$ItemCategorySubCollectionStateCopyWith<_ItemCategorySubCollectionState>
      get copyWith => __$ItemCategorySubCollectionStateCopyWithImpl<
          _ItemCategorySubCollectionState>(this, _$identity);
}

abstract class _ItemCategorySubCollectionState
    implements ItemCategorySubcollectionState {
  const factory _ItemCategorySubCollectionState(
          {@required NotNegativeIntegerNumber groupCount,
          @required NotNegativeIntegerNumber itemCount}) =
      _$_ItemCategorySubCollectionState;

  @override
  NotNegativeIntegerNumber get groupCount;
  @override
  NotNegativeIntegerNumber get itemCount;
  @override
  _$ItemCategorySubCollectionStateCopyWith<_ItemCategorySubCollectionState>
      get copyWith;
}
