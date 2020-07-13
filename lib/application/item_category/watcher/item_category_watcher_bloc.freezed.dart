// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_category_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemCategoryWatcherEventTearOff {
  const _$ItemCategoryWatcherEventTearOff();

  _WatchAllStarted watchAllStarted(OrderType orderType) {
    return _WatchAllStarted(
      orderType,
    );
  }

  _WatchAllByTitleStarted watchAllByTitleStarted(
      OrderType orderType, String title) {
    return _WatchAllByTitleStarted(
      orderType,
      title,
    );
  }

  _CategoriesReceived categoriesReceived(
      Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories) {
    return _CategoriesReceived(
      failureOrCategories,
    );
  }
}

// ignore: unused_element
const $ItemCategoryWatcherEvent = _$ItemCategoryWatcherEventTearOff();

mixin _$ItemCategoryWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(OrderType orderType),
    @required Result watchAllByTitleStarted(OrderType orderType, String title),
    @required
        Result categoriesReceived(
            Either<ItemCategoryFailure, KtList<ItemCategory>>
                failureOrCategories),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(OrderType orderType),
    Result watchAllByTitleStarted(OrderType orderType, String title),
    Result categoriesReceived(
        Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result categoriesReceived(_CategoriesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result categoriesReceived(_CategoriesReceived value),
    @required Result orElse(),
  });
}

abstract class $ItemCategoryWatcherEventCopyWith<$Res> {
  factory $ItemCategoryWatcherEventCopyWith(ItemCategoryWatcherEvent value,
          $Res Function(ItemCategoryWatcherEvent) then) =
      _$ItemCategoryWatcherEventCopyWithImpl<$Res>;
}

class _$ItemCategoryWatcherEventCopyWithImpl<$Res>
    implements $ItemCategoryWatcherEventCopyWith<$Res> {
  _$ItemCategoryWatcherEventCopyWithImpl(this._value, this._then);

  final ItemCategoryWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ItemCategoryWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({OrderType orderType});
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object orderType = freezed,
  }) {
    return _then(_WatchAllStarted(
      orderType == freezed ? _value.orderType : orderType as OrderType,
    ));
  }
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.orderType) : assert(orderType != null);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'ItemCategoryWatcherEvent.watchAllStarted(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderType);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(OrderType orderType),
    @required Result watchAllByTitleStarted(OrderType orderType, String title),
    @required
        Result categoriesReceived(
            Either<ItemCategoryFailure, KtList<ItemCategory>>
                failureOrCategories),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(categoriesReceived != null);
    return watchAllStarted(orderType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(OrderType orderType),
    Result watchAllByTitleStarted(OrderType orderType, String title),
    Result categoriesReceived(
        Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result categoriesReceived(_CategoriesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(categoriesReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result categoriesReceived(_CategoriesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ItemCategoryWatcherEvent {
  const factory _WatchAllStarted(OrderType orderType) = _$_WatchAllStarted;

  OrderType get orderType;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

abstract class _$WatchAllByTitleStartedCopyWith<$Res> {
  factory _$WatchAllByTitleStartedCopyWith(_WatchAllByTitleStarted value,
          $Res Function(_WatchAllByTitleStarted) then) =
      __$WatchAllByTitleStartedCopyWithImpl<$Res>;
  $Res call({OrderType orderType, String title});
}

class __$WatchAllByTitleStartedCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllByTitleStartedCopyWith<$Res> {
  __$WatchAllByTitleStartedCopyWithImpl(_WatchAllByTitleStarted _value,
      $Res Function(_WatchAllByTitleStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllByTitleStarted));

  @override
  _WatchAllByTitleStarted get _value => super._value as _WatchAllByTitleStarted;

  @override
  $Res call({
    Object orderType = freezed,
    Object title = freezed,
  }) {
    return _then(_WatchAllByTitleStarted(
      orderType == freezed ? _value.orderType : orderType as OrderType,
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_WatchAllByTitleStarted implements _WatchAllByTitleStarted {
  const _$_WatchAllByTitleStarted(this.orderType, this.title)
      : assert(orderType != null),
        assert(title != null);

  @override
  final OrderType orderType;
  @override
  final String title;

  @override
  String toString() {
    return 'ItemCategoryWatcherEvent.watchAllByTitleStarted(orderType: $orderType, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllByTitleStarted &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$WatchAllByTitleStartedCopyWith<_WatchAllByTitleStarted> get copyWith =>
      __$WatchAllByTitleStartedCopyWithImpl<_WatchAllByTitleStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(OrderType orderType),
    @required Result watchAllByTitleStarted(OrderType orderType, String title),
    @required
        Result categoriesReceived(
            Either<ItemCategoryFailure, KtList<ItemCategory>>
                failureOrCategories),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(categoriesReceived != null);
    return watchAllByTitleStarted(orderType, title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(OrderType orderType),
    Result watchAllByTitleStarted(OrderType orderType, String title),
    Result categoriesReceived(
        Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByTitleStarted != null) {
      return watchAllByTitleStarted(orderType, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result categoriesReceived(_CategoriesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(categoriesReceived != null);
    return watchAllByTitleStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result categoriesReceived(_CategoriesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByTitleStarted != null) {
      return watchAllByTitleStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllByTitleStarted implements ItemCategoryWatcherEvent {
  const factory _WatchAllByTitleStarted(OrderType orderType, String title) =
      _$_WatchAllByTitleStarted;

  OrderType get orderType;
  String get title;
  _$WatchAllByTitleStartedCopyWith<_WatchAllByTitleStarted> get copyWith;
}

abstract class _$CategoriesReceivedCopyWith<$Res> {
  factory _$CategoriesReceivedCopyWith(
          _CategoriesReceived value, $Res Function(_CategoriesReceived) then) =
      __$CategoriesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories});
}

class __$CategoriesReceivedCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherEventCopyWithImpl<$Res>
    implements _$CategoriesReceivedCopyWith<$Res> {
  __$CategoriesReceivedCopyWithImpl(
      _CategoriesReceived _value, $Res Function(_CategoriesReceived) _then)
      : super(_value, (v) => _then(v as _CategoriesReceived));

  @override
  _CategoriesReceived get _value => super._value as _CategoriesReceived;

  @override
  $Res call({
    Object failureOrCategories = freezed,
  }) {
    return _then(_CategoriesReceived(
      failureOrCategories == freezed
          ? _value.failureOrCategories
          : failureOrCategories
              as Either<ItemCategoryFailure, KtList<ItemCategory>>,
    ));
  }
}

class _$_CategoriesReceived implements _CategoriesReceived {
  const _$_CategoriesReceived(this.failureOrCategories)
      : assert(failureOrCategories != null);

  @override
  final Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories;

  @override
  String toString() {
    return 'ItemCategoryWatcherEvent.categoriesReceived(failureOrCategories: $failureOrCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoriesReceived &&
            (identical(other.failureOrCategories, failureOrCategories) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCategories, failureOrCategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCategories);

  @override
  _$CategoriesReceivedCopyWith<_CategoriesReceived> get copyWith =>
      __$CategoriesReceivedCopyWithImpl<_CategoriesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(OrderType orderType),
    @required Result watchAllByTitleStarted(OrderType orderType, String title),
    @required
        Result categoriesReceived(
            Either<ItemCategoryFailure, KtList<ItemCategory>>
                failureOrCategories),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(categoriesReceived != null);
    return categoriesReceived(failureOrCategories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(OrderType orderType),
    Result watchAllByTitleStarted(OrderType orderType, String title),
    Result categoriesReceived(
        Either<ItemCategoryFailure, KtList<ItemCategory>> failureOrCategories),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoriesReceived != null) {
      return categoriesReceived(failureOrCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    @required Result categoriesReceived(_CategoriesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(categoriesReceived != null);
    return categoriesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllByTitleStarted(_WatchAllByTitleStarted value),
    Result categoriesReceived(_CategoriesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoriesReceived != null) {
      return categoriesReceived(this);
    }
    return orElse();
  }
}

abstract class _CategoriesReceived implements ItemCategoryWatcherEvent {
  const factory _CategoriesReceived(
      Either<ItemCategoryFailure, KtList<ItemCategory>>
          failureOrCategories) = _$_CategoriesReceived;

  Either<ItemCategoryFailure, KtList<ItemCategory>> get failureOrCategories;
  _$CategoriesReceivedCopyWith<_CategoriesReceived> get copyWith;
}

class _$ItemCategoryWatcherStateTearOff {
  const _$ItemCategoryWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress({@required bool isSearching}) {
    return _LoadInProgress(
      isSearching: isSearching,
    );
  }

  _LoadSuccess loadSuccess(KtList<ItemCategory> categories) {
    return _LoadSuccess(
      categories,
    );
  }

  _LoadFailure loadFailure(ItemCategoryFailure categoryFailure) {
    return _LoadFailure(
      categoryFailure,
    );
  }
}

// ignore: unused_element
const $ItemCategoryWatcherState = _$ItemCategoryWatcherStateTearOff();

mixin _$ItemCategoryWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(bool isSearching),
    @required Result loadSuccess(KtList<ItemCategory> categories),
    @required Result loadFailure(ItemCategoryFailure categoryFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(bool isSearching),
    Result loadSuccess(KtList<ItemCategory> categories),
    Result loadFailure(ItemCategoryFailure categoryFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ItemCategoryWatcherStateCopyWith<$Res> {
  factory $ItemCategoryWatcherStateCopyWith(ItemCategoryWatcherState value,
          $Res Function(ItemCategoryWatcherState) then) =
      _$ItemCategoryWatcherStateCopyWithImpl<$Res>;
}

class _$ItemCategoryWatcherStateCopyWithImpl<$Res>
    implements $ItemCategoryWatcherStateCopyWith<$Res> {
  _$ItemCategoryWatcherStateCopyWithImpl(this._value, this._then);

  final ItemCategoryWatcherState _value;
  // ignore: unused_field
  final $Res Function(ItemCategoryWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherStateCopyWithImpl<$Res>
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
    return 'ItemCategoryWatcherState.initial()';
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
    @required Result loadInProgress(bool isSearching),
    @required Result loadSuccess(KtList<ItemCategory> categories),
    @required Result loadFailure(ItemCategoryFailure categoryFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(bool isSearching),
    Result loadSuccess(KtList<ItemCategory> categories),
    Result loadFailure(ItemCategoryFailure categoryFailure),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
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

abstract class _Initial implements ItemCategoryWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  $Res call({bool isSearching});
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object isSearching = freezed,
  }) {
    return _then(_LoadInProgress(
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
    ));
  }
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress({@required this.isSearching})
      : assert(isSearching != null);

  @override
  final bool isSearching;

  @override
  String toString() {
    return 'ItemCategoryWatcherState.loadInProgress(isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isSearching);

  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(bool isSearching),
    @required Result loadSuccess(KtList<ItemCategory> categories),
    @required Result loadFailure(ItemCategoryFailure categoryFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(isSearching);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(bool isSearching),
    Result loadSuccess(KtList<ItemCategory> categories),
    Result loadFailure(ItemCategoryFailure categoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(isSearching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ItemCategoryWatcherState {
  const factory _LoadInProgress({@required bool isSearching}) =
      _$_LoadInProgress;

  bool get isSearching;
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<ItemCategory> categories});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_LoadSuccess(
      categories == freezed
          ? _value.categories
          : categories as KtList<ItemCategory>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.categories) : assert(categories != null);

  @override
  final KtList<ItemCategory> categories;

  @override
  String toString() {
    return 'ItemCategoryWatcherState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(bool isSearching),
    @required Result loadSuccess(KtList<ItemCategory> categories),
    @required Result loadFailure(ItemCategoryFailure categoryFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(bool isSearching),
    Result loadSuccess(KtList<ItemCategory> categories),
    Result loadFailure(ItemCategoryFailure categoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
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

abstract class _LoadSuccess implements ItemCategoryWatcherState {
  const factory _LoadSuccess(KtList<ItemCategory> categories) = _$_LoadSuccess;

  KtList<ItemCategory> get categories;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ItemCategoryFailure categoryFailure});

  $ItemCategoryFailureCopyWith<$Res> get categoryFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ItemCategoryWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object categoryFailure = freezed,
  }) {
    return _then(_LoadFailure(
      categoryFailure == freezed
          ? _value.categoryFailure
          : categoryFailure as ItemCategoryFailure,
    ));
  }

  @override
  $ItemCategoryFailureCopyWith<$Res> get categoryFailure {
    if (_value.categoryFailure == null) {
      return null;
    }
    return $ItemCategoryFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.categoryFailure) : assert(categoryFailure != null);

  @override
  final ItemCategoryFailure categoryFailure;

  @override
  String toString() {
    return 'ItemCategoryWatcherState.loadFailure(categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.categoryFailure, categoryFailure) ||
                const DeepCollectionEquality()
                    .equals(other.categoryFailure, categoryFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(bool isSearching),
    @required Result loadSuccess(KtList<ItemCategory> categories),
    @required Result loadFailure(ItemCategoryFailure categoryFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(bool isSearching),
    Result loadSuccess(KtList<ItemCategory> categories),
    Result loadFailure(ItemCategoryFailure categoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
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

abstract class _LoadFailure implements ItemCategoryWatcherState {
  const factory _LoadFailure(ItemCategoryFailure categoryFailure) =
      _$_LoadFailure;

  ItemCategoryFailure get categoryFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
