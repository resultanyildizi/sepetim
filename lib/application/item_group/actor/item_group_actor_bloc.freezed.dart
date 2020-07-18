// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_group_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemGroupActorEventTearOff {
  const _$ItemGroupActorEventTearOff();

  _ItemGroupActorEvent deleted(UniqueId categoryId, ItemGroup group) {
    return _ItemGroupActorEvent(
      categoryId,
      group,
    );
  }
}

// ignore: unused_element
const $ItemGroupActorEvent = _$ItemGroupActorEventTearOff();

mixin _$ItemGroupActorEvent {
  UniqueId get categoryId;
  ItemGroup get group;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(UniqueId categoryId, ItemGroup group),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(UniqueId categoryId, ItemGroup group),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_ItemGroupActorEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_ItemGroupActorEvent value),
    @required Result orElse(),
  });

  $ItemGroupActorEventCopyWith<ItemGroupActorEvent> get copyWith;
}

abstract class $ItemGroupActorEventCopyWith<$Res> {
  factory $ItemGroupActorEventCopyWith(
          ItemGroupActorEvent value, $Res Function(ItemGroupActorEvent) then) =
      _$ItemGroupActorEventCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId, ItemGroup group});

  $ItemGroupCopyWith<$Res> get group;
}

class _$ItemGroupActorEventCopyWithImpl<$Res>
    implements $ItemGroupActorEventCopyWith<$Res> {
  _$ItemGroupActorEventCopyWithImpl(this._value, this._then);

  final ItemGroupActorEvent _value;
  // ignore: unused_field
  final $Res Function(ItemGroupActorEvent) _then;

  @override
  $Res call({
    Object categoryId = freezed,
    Object group = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      group: group == freezed ? _value.group : group as ItemGroup,
    ));
  }

  @override
  $ItemGroupCopyWith<$Res> get group {
    if (_value.group == null) {
      return null;
    }
    return $ItemGroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

abstract class _$ItemGroupActorEventCopyWith<$Res>
    implements $ItemGroupActorEventCopyWith<$Res> {
  factory _$ItemGroupActorEventCopyWith(_ItemGroupActorEvent value,
          $Res Function(_ItemGroupActorEvent) then) =
      __$ItemGroupActorEventCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId categoryId, ItemGroup group});

  @override
  $ItemGroupCopyWith<$Res> get group;
}

class __$ItemGroupActorEventCopyWithImpl<$Res>
    extends _$ItemGroupActorEventCopyWithImpl<$Res>
    implements _$ItemGroupActorEventCopyWith<$Res> {
  __$ItemGroupActorEventCopyWithImpl(
      _ItemGroupActorEvent _value, $Res Function(_ItemGroupActorEvent) _then)
      : super(_value, (v) => _then(v as _ItemGroupActorEvent));

  @override
  _ItemGroupActorEvent get _value => super._value as _ItemGroupActorEvent;

  @override
  $Res call({
    Object categoryId = freezed,
    Object group = freezed,
  }) {
    return _then(_ItemGroupActorEvent(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      group == freezed ? _value.group : group as ItemGroup,
    ));
  }
}

class _$_ItemGroupActorEvent implements _ItemGroupActorEvent {
  const _$_ItemGroupActorEvent(this.categoryId, this.group)
      : assert(categoryId != null),
        assert(group != null);

  @override
  final UniqueId categoryId;
  @override
  final ItemGroup group;

  @override
  String toString() {
    return 'ItemGroupActorEvent.deleted(categoryId: $categoryId, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemGroupActorEvent &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(group);

  @override
  _$ItemGroupActorEventCopyWith<_ItemGroupActorEvent> get copyWith =>
      __$ItemGroupActorEventCopyWithImpl<_ItemGroupActorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(UniqueId categoryId, ItemGroup group),
  }) {
    assert(deleted != null);
    return deleted(categoryId, group);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(UniqueId categoryId, ItemGroup group),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(categoryId, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_ItemGroupActorEvent value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_ItemGroupActorEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _ItemGroupActorEvent implements ItemGroupActorEvent {
  const factory _ItemGroupActorEvent(UniqueId categoryId, ItemGroup group) =
      _$_ItemGroupActorEvent;

  @override
  UniqueId get categoryId;
  @override
  ItemGroup get group;
  @override
  _$ItemGroupActorEventCopyWith<_ItemGroupActorEvent> get copyWith;
}

class _$ItemGroupActorStateTearOff {
  const _$ItemGroupActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _DeleteFailure deleteFailure(ItemGroupFailure groupFailure) {
    return _DeleteFailure(
      groupFailure,
    );
  }
}

// ignore: unused_element
const $ItemGroupActorState = _$ItemGroupActorStateTearOff();

mixin _$ItemGroupActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ItemGroupFailure groupFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ItemGroupFailure groupFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  });
}

abstract class $ItemGroupActorStateCopyWith<$Res> {
  factory $ItemGroupActorStateCopyWith(
          ItemGroupActorState value, $Res Function(ItemGroupActorState) then) =
      _$ItemGroupActorStateCopyWithImpl<$Res>;
}

class _$ItemGroupActorStateCopyWithImpl<$Res>
    implements $ItemGroupActorStateCopyWith<$Res> {
  _$ItemGroupActorStateCopyWithImpl(this._value, this._then);

  final ItemGroupActorState _value;
  // ignore: unused_field
  final $Res Function(ItemGroupActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ItemGroupActorStateCopyWithImpl<$Res>
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
    return 'ItemGroupActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ItemGroupFailure groupFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ItemGroupFailure groupFailure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItemGroupActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ItemGroupActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ItemGroupActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ItemGroupFailure groupFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ItemGroupFailure groupFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ItemGroupActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$ItemGroupActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'ItemGroupActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ItemGroupFailure groupFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ItemGroupFailure groupFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ItemGroupActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ItemGroupFailure groupFailure});

  $ItemGroupFailureCopyWith<$Res> get groupFailure;
}

class __$DeleteFailureCopyWithImpl<$Res>
    extends _$ItemGroupActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object groupFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      groupFailure == freezed
          ? _value.groupFailure
          : groupFailure as ItemGroupFailure,
    ));
  }

  @override
  $ItemGroupFailureCopyWith<$Res> get groupFailure {
    if (_value.groupFailure == null) {
      return null;
    }
    return $ItemGroupFailureCopyWith<$Res>(_value.groupFailure, (value) {
      return _then(_value.copyWith(groupFailure: value));
    });
  }
}

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.groupFailure) : assert(groupFailure != null);

  @override
  final ItemGroupFailure groupFailure;

  @override
  String toString() {
    return 'ItemGroupActorState.deleteFailure(groupFailure: $groupFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.groupFailure, groupFailure) ||
                const DeepCollectionEquality()
                    .equals(other.groupFailure, groupFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groupFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ItemGroupFailure groupFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(groupFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ItemGroupFailure groupFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(groupFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ItemGroupActorState {
  const factory _DeleteFailure(ItemGroupFailure groupFailure) =
      _$_DeleteFailure;

  ItemGroupFailure get groupFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}
