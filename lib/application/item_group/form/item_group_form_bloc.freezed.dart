// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_group_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemGroupFormEventTearOff {
  const _$ItemGroupFormEventTearOff();

  _Initialized initialized(Option<ItemGroup> initalOption) {
    return _Initialized(
      initalOption,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _Saved saved(UniqueId categoryId) {
    return _Saved(
      categoryId,
    );
  }
}

// ignore: unused_element
const $ItemGroupFormEvent = _$ItemGroupFormEventTearOff();

mixin _$ItemGroupFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemGroup> initalOption),
    @required Result titleChanged(String title),
    @required Result saved(UniqueId categoryId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemGroup> initalOption),
    Result titleChanged(String title),
    Result saved(UniqueId categoryId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $ItemGroupFormEventCopyWith<$Res> {
  factory $ItemGroupFormEventCopyWith(
          ItemGroupFormEvent value, $Res Function(ItemGroupFormEvent) then) =
      _$ItemGroupFormEventCopyWithImpl<$Res>;
}

class _$ItemGroupFormEventCopyWithImpl<$Res>
    implements $ItemGroupFormEventCopyWith<$Res> {
  _$ItemGroupFormEventCopyWithImpl(this._value, this._then);

  final ItemGroupFormEvent _value;
  // ignore: unused_field
  final $Res Function(ItemGroupFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<ItemGroup> initalOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$ItemGroupFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initalOption = freezed,
  }) {
    return _then(_Initialized(
      initalOption == freezed
          ? _value.initalOption
          : initalOption as Option<ItemGroup>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initalOption) : assert(initalOption != null);

  @override
  final Option<ItemGroup> initalOption;

  @override
  String toString() {
    return 'ItemGroupFormEvent.initialized(initalOption: $initalOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initalOption, initalOption) ||
                const DeepCollectionEquality()
                    .equals(other.initalOption, initalOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initalOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemGroup> initalOption),
    @required Result titleChanged(String title),
    @required Result saved(UniqueId categoryId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(saved != null);
    return initialized(initalOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemGroup> initalOption),
    Result titleChanged(String title),
    Result saved(UniqueId categoryId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initalOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ItemGroupFormEvent {
  const factory _Initialized(Option<ItemGroup> initalOption) = _$_Initialized;

  Option<ItemGroup> get initalOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class __$TitleChangedCopyWithImpl<$Res>
    extends _$ItemGroupFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'ItemGroupFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemGroup> initalOption),
    @required Result titleChanged(String title),
    @required Result saved(UniqueId categoryId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(saved != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemGroup> initalOption),
    Result titleChanged(String title),
    Result saved(UniqueId categoryId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements ItemGroupFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId});
}

class __$SavedCopyWithImpl<$Res> extends _$ItemGroupFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object categoryId = freezed,
  }) {
    return _then(_Saved(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
    ));
  }
}

class _$_Saved implements _Saved {
  const _$_Saved(this.categoryId) : assert(categoryId != null);

  @override
  final UniqueId categoryId;

  @override
  String toString() {
    return 'ItemGroupFormEvent.saved(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryId);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemGroup> initalOption),
    @required Result titleChanged(String title),
    @required Result saved(UniqueId categoryId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(saved != null);
    return saved(categoryId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemGroup> initalOption),
    Result titleChanged(String title),
    Result saved(UniqueId categoryId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ItemGroupFormEvent {
  const factory _Saved(UniqueId categoryId) = _$_Saved;

  UniqueId get categoryId;
  _$SavedCopyWith<_Saved> get copyWith;
}

class _$ItemGroupFormStateTearOff {
  const _$ItemGroupFormStateTearOff();

  _ItemGroupFormState call(
      {@required
          ItemGroup group,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ItemGroupFailure, Unit>> groupFailureOrSuccessOption,
      @required
          bool isSaving,
      @required
          bool isEditing}) {
    return _ItemGroupFormState(
      group: group,
      showErrorMessages: showErrorMessages,
      groupFailureOrSuccessOption: groupFailureOrSuccessOption,
      isSaving: isSaving,
      isEditing: isEditing,
    );
  }
}

// ignore: unused_element
const $ItemGroupFormState = _$ItemGroupFormStateTearOff();

mixin _$ItemGroupFormState {
  ItemGroup get group;
  bool get showErrorMessages;
  Option<Either<ItemGroupFailure, Unit>> get groupFailureOrSuccessOption;
  bool get isSaving;
  bool get isEditing;

  $ItemGroupFormStateCopyWith<ItemGroupFormState> get copyWith;
}

abstract class $ItemGroupFormStateCopyWith<$Res> {
  factory $ItemGroupFormStateCopyWith(
          ItemGroupFormState value, $Res Function(ItemGroupFormState) then) =
      _$ItemGroupFormStateCopyWithImpl<$Res>;
  $Res call(
      {ItemGroup group,
      bool showErrorMessages,
      Option<Either<ItemGroupFailure, Unit>> groupFailureOrSuccessOption,
      bool isSaving,
      bool isEditing});

  $ItemGroupCopyWith<$Res> get group;
}

class _$ItemGroupFormStateCopyWithImpl<$Res>
    implements $ItemGroupFormStateCopyWith<$Res> {
  _$ItemGroupFormStateCopyWithImpl(this._value, this._then);

  final ItemGroupFormState _value;
  // ignore: unused_field
  final $Res Function(ItemGroupFormState) _then;

  @override
  $Res call({
    Object group = freezed,
    Object showErrorMessages = freezed,
    Object groupFailureOrSuccessOption = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed ? _value.group : group as ItemGroup,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      groupFailureOrSuccessOption: groupFailureOrSuccessOption == freezed
          ? _value.groupFailureOrSuccessOption
          : groupFailureOrSuccessOption
              as Option<Either<ItemGroupFailure, Unit>>,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
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

abstract class _$ItemGroupFormStateCopyWith<$Res>
    implements $ItemGroupFormStateCopyWith<$Res> {
  factory _$ItemGroupFormStateCopyWith(
          _ItemGroupFormState value, $Res Function(_ItemGroupFormState) then) =
      __$ItemGroupFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemGroup group,
      bool showErrorMessages,
      Option<Either<ItemGroupFailure, Unit>> groupFailureOrSuccessOption,
      bool isSaving,
      bool isEditing});

  @override
  $ItemGroupCopyWith<$Res> get group;
}

class __$ItemGroupFormStateCopyWithImpl<$Res>
    extends _$ItemGroupFormStateCopyWithImpl<$Res>
    implements _$ItemGroupFormStateCopyWith<$Res> {
  __$ItemGroupFormStateCopyWithImpl(
      _ItemGroupFormState _value, $Res Function(_ItemGroupFormState) _then)
      : super(_value, (v) => _then(v as _ItemGroupFormState));

  @override
  _ItemGroupFormState get _value => super._value as _ItemGroupFormState;

  @override
  $Res call({
    Object group = freezed,
    Object showErrorMessages = freezed,
    Object groupFailureOrSuccessOption = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
  }) {
    return _then(_ItemGroupFormState(
      group: group == freezed ? _value.group : group as ItemGroup,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      groupFailureOrSuccessOption: groupFailureOrSuccessOption == freezed
          ? _value.groupFailureOrSuccessOption
          : groupFailureOrSuccessOption
              as Option<Either<ItemGroupFailure, Unit>>,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
    ));
  }
}

class _$_ItemGroupFormState implements _ItemGroupFormState {
  const _$_ItemGroupFormState(
      {@required this.group,
      @required this.showErrorMessages,
      @required this.groupFailureOrSuccessOption,
      @required this.isSaving,
      @required this.isEditing})
      : assert(group != null),
        assert(showErrorMessages != null),
        assert(groupFailureOrSuccessOption != null),
        assert(isSaving != null),
        assert(isEditing != null);

  @override
  final ItemGroup group;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ItemGroupFailure, Unit>> groupFailureOrSuccessOption;
  @override
  final bool isSaving;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'ItemGroupFormState(group: $group, showErrorMessages: $showErrorMessages, groupFailureOrSuccessOption: $groupFailureOrSuccessOption, isSaving: $isSaving, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemGroupFormState &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.groupFailureOrSuccessOption,
                    groupFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.groupFailureOrSuccessOption,
                    groupFailureOrSuccessOption)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(groupFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing);

  @override
  _$ItemGroupFormStateCopyWith<_ItemGroupFormState> get copyWith =>
      __$ItemGroupFormStateCopyWithImpl<_ItemGroupFormState>(this, _$identity);
}

abstract class _ItemGroupFormState implements ItemGroupFormState {
  const factory _ItemGroupFormState(
      {@required
          ItemGroup group,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ItemGroupFailure, Unit>> groupFailureOrSuccessOption,
      @required
          bool isSaving,
      @required
          bool isEditing}) = _$_ItemGroupFormState;

  @override
  ItemGroup get group;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ItemGroupFailure, Unit>> get groupFailureOrSuccessOption;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  _$ItemGroupFormStateCopyWith<_ItemGroupFormState> get copyWith;
}
