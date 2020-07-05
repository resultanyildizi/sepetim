// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'bottom_navbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BottomNavbarEventTearOff {
  const _$BottomNavbarEventTearOff();

  _BottomNavbarEvent indexChanged({@required int index}) {
    return _BottomNavbarEvent(
      index: index,
    );
  }
}

// ignore: unused_element
const $BottomNavbarEvent = _$BottomNavbarEventTearOff();

mixin _$BottomNavbarEvent {
  int get index;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result indexChanged(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result indexChanged(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result indexChanged(_BottomNavbarEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result indexChanged(_BottomNavbarEvent value),
    @required Result orElse(),
  });

  $BottomNavbarEventCopyWith<BottomNavbarEvent> get copyWith;
}

abstract class $BottomNavbarEventCopyWith<$Res> {
  factory $BottomNavbarEventCopyWith(
          BottomNavbarEvent value, $Res Function(BottomNavbarEvent) then) =
      _$BottomNavbarEventCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$BottomNavbarEventCopyWithImpl<$Res>
    implements $BottomNavbarEventCopyWith<$Res> {
  _$BottomNavbarEventCopyWithImpl(this._value, this._then);

  final BottomNavbarEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavbarEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class _$BottomNavbarEventCopyWith<$Res>
    implements $BottomNavbarEventCopyWith<$Res> {
  factory _$BottomNavbarEventCopyWith(
          _BottomNavbarEvent value, $Res Function(_BottomNavbarEvent) then) =
      __$BottomNavbarEventCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class __$BottomNavbarEventCopyWithImpl<$Res>
    extends _$BottomNavbarEventCopyWithImpl<$Res>
    implements _$BottomNavbarEventCopyWith<$Res> {
  __$BottomNavbarEventCopyWithImpl(
      _BottomNavbarEvent _value, $Res Function(_BottomNavbarEvent) _then)
      : super(_value, (v) => _then(v as _BottomNavbarEvent));

  @override
  _BottomNavbarEvent get _value => super._value as _BottomNavbarEvent;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_BottomNavbarEvent(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_BottomNavbarEvent implements _BottomNavbarEvent {
  const _$_BottomNavbarEvent({@required this.index}) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavbarEvent.indexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomNavbarEvent &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$BottomNavbarEventCopyWith<_BottomNavbarEvent> get copyWith =>
      __$BottomNavbarEventCopyWithImpl<_BottomNavbarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result indexChanged(int index),
  }) {
    assert(indexChanged != null);
    return indexChanged(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result indexChanged(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (indexChanged != null) {
      return indexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result indexChanged(_BottomNavbarEvent value),
  }) {
    assert(indexChanged != null);
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result indexChanged(_BottomNavbarEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class _BottomNavbarEvent implements BottomNavbarEvent {
  const factory _BottomNavbarEvent({@required int index}) =
      _$_BottomNavbarEvent;

  @override
  int get index;
  @override
  _$BottomNavbarEventCopyWith<_BottomNavbarEvent> get copyWith;
}

class _$BottomNavbarStateTearOff {
  const _$BottomNavbarStateTearOff();

  _BottomNavbarState call({@required int selectedIndex}) {
    return _BottomNavbarState(
      selectedIndex: selectedIndex,
    );
  }
}

// ignore: unused_element
const $BottomNavbarState = _$BottomNavbarStateTearOff();

mixin _$BottomNavbarState {
  int get selectedIndex;

  $BottomNavbarStateCopyWith<BottomNavbarState> get copyWith;
}

abstract class $BottomNavbarStateCopyWith<$Res> {
  factory $BottomNavbarStateCopyWith(
          BottomNavbarState value, $Res Function(BottomNavbarState) then) =
      _$BottomNavbarStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

class _$BottomNavbarStateCopyWithImpl<$Res>
    implements $BottomNavbarStateCopyWith<$Res> {
  _$BottomNavbarStateCopyWithImpl(this._value, this._then);

  final BottomNavbarState _value;
  // ignore: unused_field
  final $Res Function(BottomNavbarState) _then;

  @override
  $Res call({
    Object selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
    ));
  }
}

abstract class _$BottomNavbarStateCopyWith<$Res>
    implements $BottomNavbarStateCopyWith<$Res> {
  factory _$BottomNavbarStateCopyWith(
          _BottomNavbarState value, $Res Function(_BottomNavbarState) then) =
      __$BottomNavbarStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

class __$BottomNavbarStateCopyWithImpl<$Res>
    extends _$BottomNavbarStateCopyWithImpl<$Res>
    implements _$BottomNavbarStateCopyWith<$Res> {
  __$BottomNavbarStateCopyWithImpl(
      _BottomNavbarState _value, $Res Function(_BottomNavbarState) _then)
      : super(_value, (v) => _then(v as _BottomNavbarState));

  @override
  _BottomNavbarState get _value => super._value as _BottomNavbarState;

  @override
  $Res call({
    Object selectedIndex = freezed,
  }) {
    return _then(_BottomNavbarState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
    ));
  }
}

class _$_BottomNavbarState implements _BottomNavbarState {
  const _$_BottomNavbarState({@required this.selectedIndex})
      : assert(selectedIndex != null);

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'BottomNavbarState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomNavbarState &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedIndex);

  @override
  _$BottomNavbarStateCopyWith<_BottomNavbarState> get copyWith =>
      __$BottomNavbarStateCopyWithImpl<_BottomNavbarState>(this, _$identity);
}

abstract class _BottomNavbarState implements BottomNavbarState {
  const factory _BottomNavbarState({@required int selectedIndex}) =
      _$_BottomNavbarState;

  @override
  int get selectedIndex;
  @override
  _$BottomNavbarStateCopyWith<_BottomNavbarState> get copyWith;
}
