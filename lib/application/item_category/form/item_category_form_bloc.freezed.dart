// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_category_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemCategoryFormEventTearOff {
  const _$ItemCategoryFormEventTearOff();

  _Initialized initialized(Option<ItemCategory> initialOption) {
    return _Initialized(
      initialOption,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _ColorChanged colorChanged(Color color) {
    return _ColorChanged(
      color,
    );
  }

  _CoverImageChanged coverImageChanged(ImageSource imageSource) {
    return _CoverImageChanged(
      imageSource,
    );
  }

  _CoverImageRemoved coverImageRemoved() {
    return const _CoverImageRemoved();
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $ItemCategoryFormEvent = _$ItemCategoryFormEventTearOff();

mixin _$ItemCategoryFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $ItemCategoryFormEventCopyWith<$Res> {
  factory $ItemCategoryFormEventCopyWith(ItemCategoryFormEvent value,
          $Res Function(ItemCategoryFormEvent) then) =
      _$ItemCategoryFormEventCopyWithImpl<$Res>;
}

class _$ItemCategoryFormEventCopyWithImpl<$Res>
    implements $ItemCategoryFormEventCopyWith<$Res> {
  _$ItemCategoryFormEventCopyWithImpl(this._value, this._then);

  final ItemCategoryFormEvent _value;
  // ignore: unused_field
  final $Res Function(ItemCategoryFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<ItemCategory> initialOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$ItemCategoryFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialOption = freezed,
  }) {
    return _then(_Initialized(
      initialOption == freezed
          ? _value.initialOption
          : initialOption as Option<ItemCategory>,
    ));
  }
}

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialOption) : assert(initialOption != null);

  @override
  final Option<ItemCategory> initialOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormEvent.initialized(initialOption: $initialOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemCategoryFormEvent.initialized'))
      ..add(DiagnosticsProperty('initialOption', initialOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialOption, initialOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialOption, initialOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
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

abstract class _Initialized implements ItemCategoryFormEvent {
  const factory _Initialized(Option<ItemCategory> initialOption) =
      _$_Initialized;

  Option<ItemCategory> get initialOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class __$TitleChangedCopyWithImpl<$Res>
    extends _$ItemCategoryFormEventCopyWithImpl<$Res>
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

class _$_TitleChanged with DiagnosticableTreeMixin implements _TitleChanged {
  const _$_TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormEvent.titleChanged(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemCategoryFormEvent.titleChanged'))
      ..add(DiagnosticsProperty('title', title));
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
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
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
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
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

abstract class _TitleChanged implements ItemCategoryFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

class __$ColorChangedCopyWithImpl<$Res>
    extends _$ItemCategoryFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_ColorChanged(
      color == freezed ? _value.color : color as Color,
    ));
  }
}

class _$_ColorChanged with DiagnosticableTreeMixin implements _ColorChanged {
  const _$_ColorChanged(this.color) : assert(color != null);

  @override
  final Color color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormEvent.colorChanged(color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemCategoryFormEvent.colorChanged'))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements ItemCategoryFormEvent {
  const factory _ColorChanged(Color color) = _$_ColorChanged;

  Color get color;
  _$ColorChangedCopyWith<_ColorChanged> get copyWith;
}

abstract class _$CoverImageChangedCopyWith<$Res> {
  factory _$CoverImageChangedCopyWith(
          _CoverImageChanged value, $Res Function(_CoverImageChanged) then) =
      __$CoverImageChangedCopyWithImpl<$Res>;
  $Res call({ImageSource imageSource});
}

class __$CoverImageChangedCopyWithImpl<$Res>
    extends _$ItemCategoryFormEventCopyWithImpl<$Res>
    implements _$CoverImageChangedCopyWith<$Res> {
  __$CoverImageChangedCopyWithImpl(
      _CoverImageChanged _value, $Res Function(_CoverImageChanged) _then)
      : super(_value, (v) => _then(v as _CoverImageChanged));

  @override
  _CoverImageChanged get _value => super._value as _CoverImageChanged;

  @override
  $Res call({
    Object imageSource = freezed,
  }) {
    return _then(_CoverImageChanged(
      imageSource == freezed ? _value.imageSource : imageSource as ImageSource,
    ));
  }
}

class _$_CoverImageChanged
    with DiagnosticableTreeMixin
    implements _CoverImageChanged {
  const _$_CoverImageChanged(this.imageSource) : assert(imageSource != null);

  @override
  final ImageSource imageSource;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormEvent.coverImageChanged(imageSource: $imageSource)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ItemCategoryFormEvent.coverImageChanged'))
      ..add(DiagnosticsProperty('imageSource', imageSource));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoverImageChanged &&
            (identical(other.imageSource, imageSource) ||
                const DeepCollectionEquality()
                    .equals(other.imageSource, imageSource)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageSource);

  @override
  _$CoverImageChangedCopyWith<_CoverImageChanged> get copyWith =>
      __$CoverImageChangedCopyWithImpl<_CoverImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return coverImageChanged(imageSource);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coverImageChanged != null) {
      return coverImageChanged(imageSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return coverImageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coverImageChanged != null) {
      return coverImageChanged(this);
    }
    return orElse();
  }
}

abstract class _CoverImageChanged implements ItemCategoryFormEvent {
  const factory _CoverImageChanged(ImageSource imageSource) =
      _$_CoverImageChanged;

  ImageSource get imageSource;
  _$CoverImageChangedCopyWith<_CoverImageChanged> get copyWith;
}

abstract class _$CoverImageRemovedCopyWith<$Res> {
  factory _$CoverImageRemovedCopyWith(
          _CoverImageRemoved value, $Res Function(_CoverImageRemoved) then) =
      __$CoverImageRemovedCopyWithImpl<$Res>;
}

class __$CoverImageRemovedCopyWithImpl<$Res>
    extends _$ItemCategoryFormEventCopyWithImpl<$Res>
    implements _$CoverImageRemovedCopyWith<$Res> {
  __$CoverImageRemovedCopyWithImpl(
      _CoverImageRemoved _value, $Res Function(_CoverImageRemoved) _then)
      : super(_value, (v) => _then(v as _CoverImageRemoved));

  @override
  _CoverImageRemoved get _value => super._value as _CoverImageRemoved;
}

class _$_CoverImageRemoved
    with DiagnosticableTreeMixin
    implements _CoverImageRemoved {
  const _$_CoverImageRemoved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormEvent.coverImageRemoved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ItemCategoryFormEvent.coverImageRemoved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CoverImageRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return coverImageRemoved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coverImageRemoved != null) {
      return coverImageRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return coverImageRemoved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coverImageRemoved != null) {
      return coverImageRemoved(this);
    }
    return orElse();
  }
}

abstract class _CoverImageRemoved implements ItemCategoryFormEvent {
  const factory _CoverImageRemoved() = _$_CoverImageRemoved;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res>
    extends _$ItemCategoryFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ItemCategoryFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<ItemCategory> initialOption),
    @required Result titleChanged(String title),
    @required Result colorChanged(Color color),
    @required Result coverImageChanged(ImageSource imageSource),
    @required Result coverImageRemoved(),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<ItemCategory> initialOption),
    Result titleChanged(String title),
    Result colorChanged(Color color),
    Result coverImageChanged(ImageSource imageSource),
    Result coverImageRemoved(),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result coverImageChanged(_CoverImageChanged value),
    @required Result coverImageRemoved(_CoverImageRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(colorChanged != null);
    assert(coverImageChanged != null);
    assert(coverImageRemoved != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result colorChanged(_ColorChanged value),
    Result coverImageChanged(_CoverImageChanged value),
    Result coverImageRemoved(_CoverImageRemoved value),
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

abstract class _Saved implements ItemCategoryFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$ItemCategoryFormStateTearOff {
  const _$ItemCategoryFormStateTearOff();

  _ItemCategoryFormState call(
      {@required
          ItemCategory category,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ItemCategoryFailure, Unit>>
              categoryFailureOrSuccessOption,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          Option<File> temporaryImageFile}) {
    return _ItemCategoryFormState(
      category: category,
      showErrorMessages: showErrorMessages,
      categoryFailureOrSuccessOption: categoryFailureOrSuccessOption,
      isSaving: isSaving,
      isEditing: isEditing,
      temporaryImageFile: temporaryImageFile,
    );
  }
}

// ignore: unused_element
const $ItemCategoryFormState = _$ItemCategoryFormStateTearOff();

mixin _$ItemCategoryFormState {
  ItemCategory get category;
  bool get showErrorMessages;
  Option<Either<ItemCategoryFailure, Unit>> get categoryFailureOrSuccessOption;
  bool get isSaving;
  bool get isEditing;
  Option<File> get temporaryImageFile;

  $ItemCategoryFormStateCopyWith<ItemCategoryFormState> get copyWith;
}

abstract class $ItemCategoryFormStateCopyWith<$Res> {
  factory $ItemCategoryFormStateCopyWith(ItemCategoryFormState value,
          $Res Function(ItemCategoryFormState) then) =
      _$ItemCategoryFormStateCopyWithImpl<$Res>;
  $Res call(
      {ItemCategory category,
      bool showErrorMessages,
      Option<Either<ItemCategoryFailure, Unit>> categoryFailureOrSuccessOption,
      bool isSaving,
      bool isEditing,
      Option<File> temporaryImageFile});

  $ItemCategoryCopyWith<$Res> get category;
}

class _$ItemCategoryFormStateCopyWithImpl<$Res>
    implements $ItemCategoryFormStateCopyWith<$Res> {
  _$ItemCategoryFormStateCopyWithImpl(this._value, this._then);

  final ItemCategoryFormState _value;
  // ignore: unused_field
  final $Res Function(ItemCategoryFormState) _then;

  @override
  $Res call({
    Object category = freezed,
    Object showErrorMessages = freezed,
    Object categoryFailureOrSuccessOption = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object temporaryImageFile = freezed,
  }) {
    return _then(_value.copyWith(
      category:
          category == freezed ? _value.category : category as ItemCategory,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      categoryFailureOrSuccessOption: categoryFailureOrSuccessOption == freezed
          ? _value.categoryFailureOrSuccessOption
          : categoryFailureOrSuccessOption
              as Option<Either<ItemCategoryFailure, Unit>>,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      temporaryImageFile: temporaryImageFile == freezed
          ? _value.temporaryImageFile
          : temporaryImageFile as Option<File>,
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

abstract class _$ItemCategoryFormStateCopyWith<$Res>
    implements $ItemCategoryFormStateCopyWith<$Res> {
  factory _$ItemCategoryFormStateCopyWith(_ItemCategoryFormState value,
          $Res Function(_ItemCategoryFormState) then) =
      __$ItemCategoryFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemCategory category,
      bool showErrorMessages,
      Option<Either<ItemCategoryFailure, Unit>> categoryFailureOrSuccessOption,
      bool isSaving,
      bool isEditing,
      Option<File> temporaryImageFile});

  @override
  $ItemCategoryCopyWith<$Res> get category;
}

class __$ItemCategoryFormStateCopyWithImpl<$Res>
    extends _$ItemCategoryFormStateCopyWithImpl<$Res>
    implements _$ItemCategoryFormStateCopyWith<$Res> {
  __$ItemCategoryFormStateCopyWithImpl(_ItemCategoryFormState _value,
      $Res Function(_ItemCategoryFormState) _then)
      : super(_value, (v) => _then(v as _ItemCategoryFormState));

  @override
  _ItemCategoryFormState get _value => super._value as _ItemCategoryFormState;

  @override
  $Res call({
    Object category = freezed,
    Object showErrorMessages = freezed,
    Object categoryFailureOrSuccessOption = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object temporaryImageFile = freezed,
  }) {
    return _then(_ItemCategoryFormState(
      category:
          category == freezed ? _value.category : category as ItemCategory,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      categoryFailureOrSuccessOption: categoryFailureOrSuccessOption == freezed
          ? _value.categoryFailureOrSuccessOption
          : categoryFailureOrSuccessOption
              as Option<Either<ItemCategoryFailure, Unit>>,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      temporaryImageFile: temporaryImageFile == freezed
          ? _value.temporaryImageFile
          : temporaryImageFile as Option<File>,
    ));
  }
}

class _$_ItemCategoryFormState
    with DiagnosticableTreeMixin
    implements _ItemCategoryFormState {
  const _$_ItemCategoryFormState(
      {@required this.category,
      @required this.showErrorMessages,
      @required this.categoryFailureOrSuccessOption,
      @required this.isSaving,
      @required this.isEditing,
      @required this.temporaryImageFile})
      : assert(category != null),
        assert(showErrorMessages != null),
        assert(categoryFailureOrSuccessOption != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(temporaryImageFile != null);

  @override
  final ItemCategory category;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ItemCategoryFailure, Unit>>
      categoryFailureOrSuccessOption;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<File> temporaryImageFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemCategoryFormState(category: $category, showErrorMessages: $showErrorMessages, categoryFailureOrSuccessOption: $categoryFailureOrSuccessOption, isSaving: $isSaving, isEditing: $isEditing, temporaryImageFile: $temporaryImageFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemCategoryFormState'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty(
          'categoryFailureOrSuccessOption', categoryFailureOrSuccessOption))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('temporaryImageFile', temporaryImageFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemCategoryFormState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.categoryFailureOrSuccessOption,
                    categoryFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.categoryFailureOrSuccessOption,
                    categoryFailureOrSuccessOption)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.temporaryImageFile, temporaryImageFile) ||
                const DeepCollectionEquality()
                    .equals(other.temporaryImageFile, temporaryImageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(categoryFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(temporaryImageFile);

  @override
  _$ItemCategoryFormStateCopyWith<_ItemCategoryFormState> get copyWith =>
      __$ItemCategoryFormStateCopyWithImpl<_ItemCategoryFormState>(
          this, _$identity);
}

abstract class _ItemCategoryFormState implements ItemCategoryFormState {
  const factory _ItemCategoryFormState(
      {@required
          ItemCategory category,
      @required
          bool showErrorMessages,
      @required
          Option<Either<ItemCategoryFailure, Unit>>
              categoryFailureOrSuccessOption,
      @required
          bool isSaving,
      @required
          bool isEditing,
      @required
          Option<File> temporaryImageFile}) = _$_ItemCategoryFormState;

  @override
  ItemCategory get category;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ItemCategoryFailure, Unit>> get categoryFailureOrSuccessOption;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<File> get temporaryImageFile;
  @override
  _$ItemCategoryFormStateCopyWith<_ItemCategoryFormState> get copyWith;
}
