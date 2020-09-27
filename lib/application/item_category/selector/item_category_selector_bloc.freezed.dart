// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_category_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemCategorySelectorEventTearOff {
  const _$ItemCategorySelectorEventTearOff();

// ignore: unused_element
  _SelectedChanged selectedChanged(ItemCategory category) {
    return _SelectedChanged(
      category,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemCategorySelectorEvent = _$ItemCategorySelectorEventTearOff();

/// @nodoc
mixin _$ItemCategorySelectorEvent {
  ItemCategory get category;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectedChanged(ItemCategory category),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectedChanged(ItemCategory category),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectedChanged(_SelectedChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectedChanged(_SelectedChanged value),
    @required Result orElse(),
  });

  $ItemCategorySelectorEventCopyWith<ItemCategorySelectorEvent> get copyWith;
}

/// @nodoc
abstract class $ItemCategorySelectorEventCopyWith<$Res> {
  factory $ItemCategorySelectorEventCopyWith(ItemCategorySelectorEvent value,
          $Res Function(ItemCategorySelectorEvent) then) =
      _$ItemCategorySelectorEventCopyWithImpl<$Res>;
  $Res call({ItemCategory category});

  $ItemCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$ItemCategorySelectorEventCopyWithImpl<$Res>
    implements $ItemCategorySelectorEventCopyWith<$Res> {
  _$ItemCategorySelectorEventCopyWithImpl(this._value, this._then);

  final ItemCategorySelectorEvent _value;
  // ignore: unused_field
  final $Res Function(ItemCategorySelectorEvent) _then;

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

/// @nodoc
abstract class _$SelectedChangedCopyWith<$Res>
    implements $ItemCategorySelectorEventCopyWith<$Res> {
  factory _$SelectedChangedCopyWith(
          _SelectedChanged value, $Res Function(_SelectedChanged) then) =
      __$SelectedChangedCopyWithImpl<$Res>;
  @override
  $Res call({ItemCategory category});

  @override
  $ItemCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$SelectedChangedCopyWithImpl<$Res>
    extends _$ItemCategorySelectorEventCopyWithImpl<$Res>
    implements _$SelectedChangedCopyWith<$Res> {
  __$SelectedChangedCopyWithImpl(
      _SelectedChanged _value, $Res Function(_SelectedChanged) _then)
      : super(_value, (v) => _then(v as _SelectedChanged));

  @override
  _SelectedChanged get _value => super._value as _SelectedChanged;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_SelectedChanged(
      category == freezed ? _value.category : category as ItemCategory,
    ));
  }
}

/// @nodoc
class _$_SelectedChanged implements _SelectedChanged {
  const _$_SelectedChanged(this.category) : assert(category != null);

  @override
  final ItemCategory category;

  @override
  String toString() {
    return 'ItemCategorySelectorEvent.selectedChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$SelectedChangedCopyWith<_SelectedChanged> get copyWith =>
      __$SelectedChangedCopyWithImpl<_SelectedChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectedChanged(ItemCategory category),
  }) {
    assert(selectedChanged != null);
    return selectedChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectedChanged(ItemCategory category),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedChanged != null) {
      return selectedChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectedChanged(_SelectedChanged value),
  }) {
    assert(selectedChanged != null);
    return selectedChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectedChanged(_SelectedChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedChanged != null) {
      return selectedChanged(this);
    }
    return orElse();
  }
}

abstract class _SelectedChanged implements ItemCategorySelectorEvent {
  const factory _SelectedChanged(ItemCategory category) = _$_SelectedChanged;

  @override
  ItemCategory get category;
  @override
  _$SelectedChangedCopyWith<_SelectedChanged> get copyWith;
}

/// @nodoc
class _$ItemCategorySelectorStateTearOff {
  const _$ItemCategorySelectorStateTearOff();

// ignore: unused_element
  _ItemCategorySelectorState call(
      {@required Option<ItemCategory> selectedCategory}) {
    return _ItemCategorySelectorState(
      selectedCategory: selectedCategory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemCategorySelectorState = _$ItemCategorySelectorStateTearOff();

/// @nodoc
mixin _$ItemCategorySelectorState {
  Option<ItemCategory> get selectedCategory;

  $ItemCategorySelectorStateCopyWith<ItemCategorySelectorState> get copyWith;
}

/// @nodoc
abstract class $ItemCategorySelectorStateCopyWith<$Res> {
  factory $ItemCategorySelectorStateCopyWith(ItemCategorySelectorState value,
          $Res Function(ItemCategorySelectorState) then) =
      _$ItemCategorySelectorStateCopyWithImpl<$Res>;
  $Res call({Option<ItemCategory> selectedCategory});
}

/// @nodoc
class _$ItemCategorySelectorStateCopyWithImpl<$Res>
    implements $ItemCategorySelectorStateCopyWith<$Res> {
  _$ItemCategorySelectorStateCopyWithImpl(this._value, this._then);

  final ItemCategorySelectorState _value;
  // ignore: unused_field
  final $Res Function(ItemCategorySelectorState) _then;

  @override
  $Res call({
    Object selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as Option<ItemCategory>,
    ));
  }
}

/// @nodoc
abstract class _$ItemCategorySelectorStateCopyWith<$Res>
    implements $ItemCategorySelectorStateCopyWith<$Res> {
  factory _$ItemCategorySelectorStateCopyWith(_ItemCategorySelectorState value,
          $Res Function(_ItemCategorySelectorState) then) =
      __$ItemCategorySelectorStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<ItemCategory> selectedCategory});
}

/// @nodoc
class __$ItemCategorySelectorStateCopyWithImpl<$Res>
    extends _$ItemCategorySelectorStateCopyWithImpl<$Res>
    implements _$ItemCategorySelectorStateCopyWith<$Res> {
  __$ItemCategorySelectorStateCopyWithImpl(_ItemCategorySelectorState _value,
      $Res Function(_ItemCategorySelectorState) _then)
      : super(_value, (v) => _then(v as _ItemCategorySelectorState));

  @override
  _ItemCategorySelectorState get _value =>
      super._value as _ItemCategorySelectorState;

  @override
  $Res call({
    Object selectedCategory = freezed,
  }) {
    return _then(_ItemCategorySelectorState(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as Option<ItemCategory>,
    ));
  }
}

/// @nodoc
class _$_ItemCategorySelectorState implements _ItemCategorySelectorState {
  const _$_ItemCategorySelectorState({@required this.selectedCategory})
      : assert(selectedCategory != null);

  @override
  final Option<ItemCategory> selectedCategory;

  @override
  String toString() {
    return 'ItemCategorySelectorState(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemCategorySelectorState &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCategory);

  @override
  _$ItemCategorySelectorStateCopyWith<_ItemCategorySelectorState>
      get copyWith =>
          __$ItemCategorySelectorStateCopyWithImpl<_ItemCategorySelectorState>(
              this, _$identity);
}

abstract class _ItemCategorySelectorState implements ItemCategorySelectorState {
  const factory _ItemCategorySelectorState(
          {@required Option<ItemCategory> selectedCategory}) =
      _$_ItemCategorySelectorState;

  @override
  Option<ItemCategory> get selectedCategory;
  @override
  _$ItemCategorySelectorStateCopyWith<_ItemCategorySelectorState> get copyWith;
}
