// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_group_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemGroupWatcherEventTearOff {
  const _$ItemGroupWatcherEventTearOff();

  _WatchAll watchAllStarted(UniqueId categoryId, OrderType orderType) {
    return _WatchAll(
      categoryId,
      orderType,
    );
  }

  _WatchAllByTitle watchAllByTitleStarted(
      UniqueId categoryId, OrderType orderType, String title) {
    return _WatchAllByTitle(
      categoryId,
      orderType,
      title,
    );
  }

  _GroupsReceived groupsReceived(
      Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups) {
    return _GroupsReceived(
      failureOrGroups,
    );
  }
}

// ignore: unused_element
const $ItemGroupWatcherEvent = _$ItemGroupWatcherEventTearOff();

mixin _$ItemGroupWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(
            UniqueId categoryId, OrderType orderType, String title),
    @required
        Result groupsReceived(
            Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    Result watchAllByTitleStarted(
        UniqueId categoryId, OrderType orderType, String title),
    Result groupsReceived(
        Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAll value),
    @required Result watchAllByTitleStarted(_WatchAllByTitle value),
    @required Result groupsReceived(_GroupsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAll value),
    Result watchAllByTitleStarted(_WatchAllByTitle value),
    Result groupsReceived(_GroupsReceived value),
    @required Result orElse(),
  });
}

abstract class $ItemGroupWatcherEventCopyWith<$Res> {
  factory $ItemGroupWatcherEventCopyWith(ItemGroupWatcherEvent value,
          $Res Function(ItemGroupWatcherEvent) then) =
      _$ItemGroupWatcherEventCopyWithImpl<$Res>;
}

class _$ItemGroupWatcherEventCopyWithImpl<$Res>
    implements $ItemGroupWatcherEventCopyWith<$Res> {
  _$ItemGroupWatcherEventCopyWithImpl(this._value, this._then);

  final ItemGroupWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ItemGroupWatcherEvent) _then;
}

abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId, OrderType orderType});
}

class __$WatchAllCopyWithImpl<$Res>
    extends _$ItemGroupWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;

  @override
  $Res call({
    Object categoryId = freezed,
    Object orderType = freezed,
  }) {
    return _then(_WatchAll(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      orderType == freezed ? _value.orderType : orderType as OrderType,
    ));
  }
}

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll(this.categoryId, this.orderType)
      : assert(categoryId != null),
        assert(orderType != null);

  @override
  final UniqueId categoryId;
  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'ItemGroupWatcherEvent.watchAllStarted(categoryId: $categoryId, orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAll &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(orderType);

  @override
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      __$WatchAllCopyWithImpl<_WatchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(
            UniqueId categoryId, OrderType orderType, String title),
    @required
        Result groupsReceived(
            Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(groupsReceived != null);
    return watchAllStarted(categoryId, orderType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    Result watchAllByTitleStarted(
        UniqueId categoryId, OrderType orderType, String title),
    Result groupsReceived(
        Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(categoryId, orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAll value),
    @required Result watchAllByTitleStarted(_WatchAllByTitle value),
    @required Result groupsReceived(_GroupsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(groupsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAll value),
    Result watchAllByTitleStarted(_WatchAllByTitle value),
    Result groupsReceived(_GroupsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements ItemGroupWatcherEvent {
  const factory _WatchAll(UniqueId categoryId, OrderType orderType) =
      _$_WatchAll;

  UniqueId get categoryId;
  OrderType get orderType;
  _$WatchAllCopyWith<_WatchAll> get copyWith;
}

abstract class _$WatchAllByTitleCopyWith<$Res> {
  factory _$WatchAllByTitleCopyWith(
          _WatchAllByTitle value, $Res Function(_WatchAllByTitle) then) =
      __$WatchAllByTitleCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId, OrderType orderType, String title});
}

class __$WatchAllByTitleCopyWithImpl<$Res>
    extends _$ItemGroupWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllByTitleCopyWith<$Res> {
  __$WatchAllByTitleCopyWithImpl(
      _WatchAllByTitle _value, $Res Function(_WatchAllByTitle) _then)
      : super(_value, (v) => _then(v as _WatchAllByTitle));

  @override
  _WatchAllByTitle get _value => super._value as _WatchAllByTitle;

  @override
  $Res call({
    Object categoryId = freezed,
    Object orderType = freezed,
    Object title = freezed,
  }) {
    return _then(_WatchAllByTitle(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      orderType == freezed ? _value.orderType : orderType as OrderType,
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_WatchAllByTitle implements _WatchAllByTitle {
  const _$_WatchAllByTitle(this.categoryId, this.orderType, this.title)
      : assert(categoryId != null),
        assert(orderType != null),
        assert(title != null);

  @override
  final UniqueId categoryId;
  @override
  final OrderType orderType;
  @override
  final String title;

  @override
  String toString() {
    return 'ItemGroupWatcherEvent.watchAllByTitleStarted(categoryId: $categoryId, orderType: $orderType, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllByTitle &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
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
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$WatchAllByTitleCopyWith<_WatchAllByTitle> get copyWith =>
      __$WatchAllByTitleCopyWithImpl<_WatchAllByTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(
            UniqueId categoryId, OrderType orderType, String title),
    @required
        Result groupsReceived(
            Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(groupsReceived != null);
    return watchAllByTitleStarted(categoryId, orderType, title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    Result watchAllByTitleStarted(
        UniqueId categoryId, OrderType orderType, String title),
    Result groupsReceived(
        Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByTitleStarted != null) {
      return watchAllByTitleStarted(categoryId, orderType, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAll value),
    @required Result watchAllByTitleStarted(_WatchAllByTitle value),
    @required Result groupsReceived(_GroupsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(groupsReceived != null);
    return watchAllByTitleStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAll value),
    Result watchAllByTitleStarted(_WatchAllByTitle value),
    Result groupsReceived(_GroupsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByTitleStarted != null) {
      return watchAllByTitleStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllByTitle implements ItemGroupWatcherEvent {
  const factory _WatchAllByTitle(
          UniqueId categoryId, OrderType orderType, String title) =
      _$_WatchAllByTitle;

  UniqueId get categoryId;
  OrderType get orderType;
  String get title;
  _$WatchAllByTitleCopyWith<_WatchAllByTitle> get copyWith;
}

abstract class _$GroupsReceivedCopyWith<$Res> {
  factory _$GroupsReceivedCopyWith(
          _GroupsReceived value, $Res Function(_GroupsReceived) then) =
      __$GroupsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups});
}

class __$GroupsReceivedCopyWithImpl<$Res>
    extends _$ItemGroupWatcherEventCopyWithImpl<$Res>
    implements _$GroupsReceivedCopyWith<$Res> {
  __$GroupsReceivedCopyWithImpl(
      _GroupsReceived _value, $Res Function(_GroupsReceived) _then)
      : super(_value, (v) => _then(v as _GroupsReceived));

  @override
  _GroupsReceived get _value => super._value as _GroupsReceived;

  @override
  $Res call({
    Object failureOrGroups = freezed,
  }) {
    return _then(_GroupsReceived(
      failureOrGroups == freezed
          ? _value.failureOrGroups
          : failureOrGroups as Either<ItemGroupFailure, KtList<ItemGroup>>,
    ));
  }
}

class _$_GroupsReceived implements _GroupsReceived {
  const _$_GroupsReceived(this.failureOrGroups)
      : assert(failureOrGroups != null);

  @override
  final Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups;

  @override
  String toString() {
    return 'ItemGroupWatcherEvent.groupsReceived(failureOrGroups: $failureOrGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupsReceived &&
            (identical(other.failureOrGroups, failureOrGroups) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrGroups, failureOrGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrGroups);

  @override
  _$GroupsReceivedCopyWith<_GroupsReceived> get copyWith =>
      __$GroupsReceivedCopyWithImpl<_GroupsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    @required
        Result watchAllByTitleStarted(
            UniqueId categoryId, OrderType orderType, String title),
    @required
        Result groupsReceived(
            Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(groupsReceived != null);
    return groupsReceived(failureOrGroups);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(UniqueId categoryId, OrderType orderType),
    Result watchAllByTitleStarted(
        UniqueId categoryId, OrderType orderType, String title),
    Result groupsReceived(
        Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (groupsReceived != null) {
      return groupsReceived(failureOrGroups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAll value),
    @required Result watchAllByTitleStarted(_WatchAllByTitle value),
    @required Result groupsReceived(_GroupsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllByTitleStarted != null);
    assert(groupsReceived != null);
    return groupsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAll value),
    Result watchAllByTitleStarted(_WatchAllByTitle value),
    Result groupsReceived(_GroupsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (groupsReceived != null) {
      return groupsReceived(this);
    }
    return orElse();
  }
}

abstract class _GroupsReceived implements ItemGroupWatcherEvent {
  const factory _GroupsReceived(
          Either<ItemGroupFailure, KtList<ItemGroup>> failureOrGroups) =
      _$_GroupsReceived;

  Either<ItemGroupFailure, KtList<ItemGroup>> get failureOrGroups;
  _$GroupsReceivedCopyWith<_GroupsReceived> get copyWith;
}

class _$ItemGroupWatcherStateTearOff {
  const _$ItemGroupWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadSuccess loadSuccess(KtList<ItemGroup> groups) {
    return _LoadSuccess(
      groups,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }
}

// ignore: unused_element
const $ItemGroupWatcherState = _$ItemGroupWatcherStateTearOff();

mixin _$ItemGroupWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(KtList<ItemGroup> groups),
    @required Result loadFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(KtList<ItemGroup> groups),
    Result loadFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ItemGroupWatcherStateCopyWith<$Res> {
  factory $ItemGroupWatcherStateCopyWith(ItemGroupWatcherState value,
          $Res Function(ItemGroupWatcherState) then) =
      _$ItemGroupWatcherStateCopyWithImpl<$Res>;
}

class _$ItemGroupWatcherStateCopyWithImpl<$Res>
    implements $ItemGroupWatcherStateCopyWith<$Res> {
  _$ItemGroupWatcherStateCopyWithImpl(this._value, this._then);

  final ItemGroupWatcherState _value;
  // ignore: unused_field
  final $Res Function(ItemGroupWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ItemGroupWatcherStateCopyWithImpl<$Res>
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
    return 'ItemGroupWatcherState.initial()';
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
    @required Result loading(),
    @required Result loadSuccess(KtList<ItemGroup> groups),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(KtList<ItemGroup> groups),
    Result loadFailure(),
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
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _Initial implements ItemGroupWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res>
    extends _$ItemGroupWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ItemGroupWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(KtList<ItemGroup> groups),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(KtList<ItemGroup> groups),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ItemGroupWatcherState {
  const factory _Loading() = _$_Loading;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<ItemGroup> groups});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ItemGroupWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object groups = freezed,
  }) {
    return _then(_LoadSuccess(
      groups == freezed ? _value.groups : groups as KtList<ItemGroup>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.groups) : assert(groups != null);

  @override
  final KtList<ItemGroup> groups;

  @override
  String toString() {
    return 'ItemGroupWatcherState.loadSuccess(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groups);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(KtList<ItemGroup> groups),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(groups);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(KtList<ItemGroup> groups),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _LoadSuccess implements ItemGroupWatcherState {
  const factory _LoadSuccess(KtList<ItemGroup> groups) = _$_LoadSuccess;

  KtList<ItemGroup> get groups;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ItemGroupWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'ItemGroupWatcherState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(KtList<ItemGroup> groups),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(KtList<ItemGroup> groups),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _LoadFailure implements ItemGroupWatcherState {
  const factory _LoadFailure() = _$_LoadFailure;
}
