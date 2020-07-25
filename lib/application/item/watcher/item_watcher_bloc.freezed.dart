// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemWatcherEventTearOff {
  const _$ItemWatcherEventTearOff();

  _WatchAllStarted watchAllStarted(
      UniqueId categoryId, UniqueId groupId, OrderType orderType) {
    return _WatchAllStarted(
      categoryId,
      groupId,
      orderType,
    );
  }

  _WatchAllByTitleStarted watchAllByTitleStarted(UniqueId categoryId,
      UniqueId groupId, OrderType orderType, String title) {
    return _WatchAllByTitleStarted(
      categoryId,
      groupId,
      orderType,
      title,
    );
  }

  _ItemsReceived itemsReceived(
      Either<ItemFailure, KtList<Item>> failureOrItems) {
    return _ItemsReceived(
      failureOrItems,
    );
  }
}

// ignore: unused_element
const $ItemWatcherEvent = _$ItemWatcherEventTearOff();

mixin _$ItemWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(
            UniqueId categoryId, UniqueId groupId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
            OrderType orderType, String title),
    @required
        Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(
        UniqueId categoryId, UniqueId groupId, OrderType orderType),
    Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
        OrderType orderType, String title),
    Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result itemsReceived(_ItemsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result itemsReceived(_ItemsReceived value),
    @required Result orElse(),
  });
}

abstract class $ItemWatcherEventCopyWith<$Res> {
  factory $ItemWatcherEventCopyWith(
          ItemWatcherEvent value, $Res Function(ItemWatcherEvent) then) =
      _$ItemWatcherEventCopyWithImpl<$Res>;
}

class _$ItemWatcherEventCopyWithImpl<$Res>
    implements $ItemWatcherEventCopyWith<$Res> {
  _$ItemWatcherEventCopyWithImpl(this._value, this._then);

  final ItemWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ItemWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId, UniqueId groupId, OrderType orderType});
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object categoryId = freezed,
    Object groupId = freezed,
    Object orderType = freezed,
  }) {
    return _then(_WatchAllStarted(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      groupId == freezed ? _value.groupId : groupId as UniqueId,
      orderType == freezed ? _value.orderType : orderType as OrderType,
    ));
  }
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.categoryId, this.groupId, this.orderType)
      : assert(categoryId != null),
        assert(groupId != null),
        assert(orderType != null);

  @override
  final UniqueId categoryId;
  @override
  final UniqueId groupId;
  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'ItemWatcherEvent.watchAllStarted(categoryId: $categoryId, groupId: $groupId, orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(orderType);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(
            UniqueId categoryId, UniqueId groupId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
            OrderType orderType, String title),
    @required
        Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(itemsReceived != null);
    return watchAllStarted(categoryId, groupId, orderType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(
        UniqueId categoryId, UniqueId groupId, OrderType orderType),
    Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
        OrderType orderType, String title),
    Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(categoryId, groupId, orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result itemsReceived(_ItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(itemsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result itemsReceived(_ItemsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ItemWatcherEvent {
  const factory _WatchAllStarted(
          UniqueId categoryId, UniqueId groupId, OrderType orderType) =
      _$_WatchAllStarted;

  UniqueId get categoryId;
  UniqueId get groupId;
  OrderType get orderType;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

abstract class _$WatchAllByTitleStartedCopyWith<$Res> {
  factory _$WatchAllByTitleStartedCopyWith(_WatchAllByTitleStarted value,
          $Res Function(_WatchAllByTitleStarted) then) =
      __$WatchAllByTitleStartedCopyWithImpl<$Res>;
  $Res call(
      {UniqueId categoryId,
      UniqueId groupId,
      OrderType orderType,
      String title});
}

class __$WatchAllByTitleStartedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllByTitleStartedCopyWith<$Res> {
  __$WatchAllByTitleStartedCopyWithImpl(_WatchAllByTitleStarted _value,
      $Res Function(_WatchAllByTitleStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllByTitleStarted));

  @override
  _WatchAllByTitleStarted get _value => super._value as _WatchAllByTitleStarted;

  @override
  $Res call({
    Object categoryId = freezed,
    Object groupId = freezed,
    Object orderType = freezed,
    Object title = freezed,
  }) {
    return _then(_WatchAllByTitleStarted(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      groupId == freezed ? _value.groupId : groupId as UniqueId,
      orderType == freezed ? _value.orderType : orderType as OrderType,
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_WatchAllByTitleStarted implements _WatchAllByTitleStarted {
  const _$_WatchAllByTitleStarted(
      this.categoryId, this.groupId, this.orderType, this.title)
      : assert(categoryId != null),
        assert(groupId != null),
        assert(orderType != null),
        assert(title != null);

  @override
  final UniqueId categoryId;
  @override
  final UniqueId groupId;
  @override
  final OrderType orderType;
  @override
  final String title;

  @override
  String toString() {
    return 'ItemWatcherEvent.watchAllByTitleStarted(categoryId: $categoryId, groupId: $groupId, orderType: $orderType, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllByTitleStarted &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$WatchAllByTitleStartedCopyWith<_WatchAllByTitleStarted> get copyWith =>
      __$WatchAllByTitleStartedCopyWithImpl<_WatchAllByTitleStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(
            UniqueId categoryId, UniqueId groupId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
            OrderType orderType, String title),
    @required
        Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(itemsReceived != null);
    return watchAllByTitleStarted(categoryId, groupId, orderType, title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(
        UniqueId categoryId, UniqueId groupId, OrderType orderType),
    Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
        OrderType orderType, String title),
    Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByTitleStarted != null) {
      return watchAllByTitleStarted(categoryId, groupId, orderType, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result itemsReceived(_ItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(itemsReceived != null);
    return watchAllByTitleStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result itemsReceived(_ItemsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByTitleStarted != null) {
      return watchAllByTitleStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllByTitleStarted implements ItemWatcherEvent {
  const factory _WatchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
      OrderType orderType, String title) = _$_WatchAllByTitleStarted;

  UniqueId get categoryId;
  UniqueId get groupId;
  OrderType get orderType;
  String get title;
  _$WatchAllByTitleStartedCopyWith<_WatchAllByTitleStarted> get copyWith;
}

abstract class _$ItemsReceivedCopyWith<$Res> {
  factory _$ItemsReceivedCopyWith(
          _ItemsReceived value, $Res Function(_ItemsReceived) then) =
      __$ItemsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ItemFailure, KtList<Item>> failureOrItems});
}

class __$ItemsReceivedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$ItemsReceivedCopyWith<$Res> {
  __$ItemsReceivedCopyWithImpl(
      _ItemsReceived _value, $Res Function(_ItemsReceived) _then)
      : super(_value, (v) => _then(v as _ItemsReceived));

  @override
  _ItemsReceived get _value => super._value as _ItemsReceived;

  @override
  $Res call({
    Object failureOrItems = freezed,
  }) {
    return _then(_ItemsReceived(
      failureOrItems == freezed
          ? _value.failureOrItems
          : failureOrItems as Either<ItemFailure, KtList<Item>>,
    ));
  }
}

class _$_ItemsReceived implements _ItemsReceived {
  const _$_ItemsReceived(this.failureOrItems) : assert(failureOrItems != null);

  @override
  final Either<ItemFailure, KtList<Item>> failureOrItems;

  @override
  String toString() {
    return 'ItemWatcherEvent.itemsReceived(failureOrItems: $failureOrItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsReceived &&
            (identical(other.failureOrItems, failureOrItems) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItems, failureOrItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrItems);

  @override
  _$ItemsReceivedCopyWith<_ItemsReceived> get copyWith =>
      __$ItemsReceivedCopyWithImpl<_ItemsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(
            UniqueId categoryId, UniqueId groupId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
            OrderType orderType, String title),
    @required
        Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(itemsReceived != null);
    return itemsReceived(failureOrItems);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(
        UniqueId categoryId, UniqueId groupId, OrderType orderType),
    Result watchAllByTitleStarted(UniqueId categoryId, UniqueId groupId,
        OrderType orderType, String title),
    Result itemsReceived(Either<ItemFailure, KtList<Item>> failureOrItems),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemsReceived != null) {
      return itemsReceived(failureOrItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result itemsReceived(_ItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(itemsReceived != null);
    return itemsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result itemsReceived(_ItemsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemsReceived != null) {
      return itemsReceived(this);
    }
    return orElse();
  }
}

abstract class _ItemsReceived implements ItemWatcherEvent {
  const factory _ItemsReceived(
      Either<ItemFailure, KtList<Item>> failureOrItems) = _$_ItemsReceived;

  Either<ItemFailure, KtList<Item>> get failureOrItems;
  _$ItemsReceivedCopyWith<_ItemsReceived> get copyWith;
}

class _$ItemWatcherStateTearOff {
  const _$ItemWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadSuccess loadSuccess(KtList<Item> items) {
    return _LoadSuccess(
      items,
    );
  }

  _LoadFailure loadFailure(ItemFailure itemFailure) {
    return _LoadFailure(
      itemFailure,
    );
  }
}

// ignore: unused_element
const $ItemWatcherState = _$ItemWatcherStateTearOff();

mixin _$ItemWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadSuccess(KtList<Item> items),
    @required Result loadFailure(ItemFailure itemFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadSuccess(KtList<Item> items),
    Result loadFailure(ItemFailure itemFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ItemWatcherStateCopyWith<$Res> {
  factory $ItemWatcherStateCopyWith(
          ItemWatcherState value, $Res Function(ItemWatcherState) then) =
      _$ItemWatcherStateCopyWithImpl<$Res>;
}

class _$ItemWatcherStateCopyWithImpl<$Res>
    implements $ItemWatcherStateCopyWith<$Res> {
  _$ItemWatcherStateCopyWithImpl(this._value, this._then);

  final ItemWatcherState _value;
  // ignore: unused_field
  final $Res Function(ItemWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ItemWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ItemWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadSuccess(KtList<Item> items),
    @required Result loadFailure(ItemFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadSuccess(KtList<Item> items),
    Result loadFailure(ItemFailure itemFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItemWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Item> items});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ItemWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_LoadSuccess(
      items == freezed ? _value.items : items as KtList<Item>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items) : assert(items != null);

  @override
  final KtList<Item> items;

  @override
  String toString() {
    return 'ItemWatcherState.loadSuccess(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadSuccess(KtList<Item> items),
    @required Result loadFailure(ItemFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadSuccess(KtList<Item> items),
    Result loadFailure(ItemFailure itemFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ItemWatcherState {
  const factory _LoadSuccess(KtList<Item> items) = _$_LoadSuccess;

  KtList<Item> get items;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ItemFailure itemFailure});

  $ItemFailureCopyWith<$Res> get itemFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ItemWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object itemFailure = freezed,
  }) {
    return _then(_LoadFailure(
      itemFailure == freezed ? _value.itemFailure : itemFailure as ItemFailure,
    ));
  }

  @override
  $ItemFailureCopyWith<$Res> get itemFailure {
    if (_value.itemFailure == null) {
      return null;
    }
    return $ItemFailureCopyWith<$Res>(_value.itemFailure, (value) {
      return _then(_value.copyWith(itemFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.itemFailure) : assert(itemFailure != null);

  @override
  final ItemFailure itemFailure;

  @override
  String toString() {
    return 'ItemWatcherState.loadFailure(itemFailure: $itemFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.itemFailure, itemFailure) ||
                const DeepCollectionEquality()
                    .equals(other.itemFailure, itemFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadSuccess(KtList<Item> items),
    @required Result loadFailure(ItemFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(itemFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadSuccess(KtList<Item> items),
    Result loadFailure(ItemFailure itemFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(itemFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ItemWatcherState {
  const factory _LoadFailure(ItemFailure itemFailure) = _$_LoadFailure;

  ItemFailure get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
