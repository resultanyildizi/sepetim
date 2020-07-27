// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemFormEventTearOff {
  const _$ItemFormEventTearOff();

  _Initialized initialized(Option<Item> initialOption) {
    return _Initialized(
      initialOption,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _PriceChanged priceChanged(String price) {
    return _PriceChanged(
      price,
    );
  }

  _DescriptionChanged descriptionChanged(String descriptionBody) {
    return _DescriptionChanged(
      descriptionBody,
    );
  }

  _SelectedIndexChanged selectedIndexChanged(int index) {
    return _SelectedIndexChanged(
      index,
    );
  }

  _IsFavoriteChanged isFavoriteChanged(UniqueId categoryId, UniqueId groupId) {
    return _IsFavoriteChanged(
      categoryId,
      groupId,
    );
  }

  _ImageChanged pictureChanged(int index, ImageSource imageSource) {
    return _ImageChanged(
      index,
      imageSource,
    );
  }

  _PictureRemoved pictureRemoved(int index) {
    return _PictureRemoved(
      index,
    );
  }

  _Saved saved(UniqueId categoryId, UniqueId groupId) {
    return _Saved(
      categoryId,
      groupId,
    );
  }
}

// ignore: unused_element
const $ItemFormEvent = _$ItemFormEventTearOff();

mixin _$ItemFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $ItemFormEventCopyWith<$Res> {
  factory $ItemFormEventCopyWith(
          ItemFormEvent value, $Res Function(ItemFormEvent) then) =
      _$ItemFormEventCopyWithImpl<$Res>;
}

class _$ItemFormEventCopyWithImpl<$Res>
    implements $ItemFormEventCopyWith<$Res> {
  _$ItemFormEventCopyWithImpl(this._value, this._then);

  final ItemFormEvent _value;
  // ignore: unused_field
  final $Res Function(ItemFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Item> initialOption});
}

class __$InitializedCopyWithImpl<$Res> extends _$ItemFormEventCopyWithImpl<$Res>
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
          : initialOption as Option<Item>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption) : assert(initialOption != null);

  @override
  final Option<Item> initialOption;

  @override
  String toString() {
    return 'ItemFormEvent.initialized(initialOption: $initialOption)';
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
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
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
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
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

abstract class _Initialized implements ItemFormEvent {
  const factory _Initialized(Option<Item> initialOption) = _$_Initialized;

  Option<Item> get initialOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class __$TitleChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
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
    return 'ItemFormEvent.titleChanged(title: $title)';
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
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
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
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
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

abstract class _TitleChanged implements ItemFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

abstract class _$PriceChangedCopyWith<$Res> {
  factory _$PriceChangedCopyWith(
          _PriceChanged value, $Res Function(_PriceChanged) then) =
      __$PriceChangedCopyWithImpl<$Res>;
  $Res call({String price});
}

class __$PriceChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$PriceChangedCopyWith<$Res> {
  __$PriceChangedCopyWithImpl(
      _PriceChanged _value, $Res Function(_PriceChanged) _then)
      : super(_value, (v) => _then(v as _PriceChanged));

  @override
  _PriceChanged get _value => super._value as _PriceChanged;

  @override
  $Res call({
    Object price = freezed,
  }) {
    return _then(_PriceChanged(
      price == freezed ? _value.price : price as String,
    ));
  }
}

class _$_PriceChanged implements _PriceChanged {
  const _$_PriceChanged(this.price) : assert(price != null);

  @override
  final String price;

  @override
  String toString() {
    return 'ItemFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @override
  _$PriceChangedCopyWith<_PriceChanged> get copyWith =>
      __$PriceChangedCopyWithImpl<_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements ItemFormEvent {
  const factory _PriceChanged(String price) = _$_PriceChanged;

  String get price;
  _$PriceChangedCopyWith<_PriceChanged> get copyWith;
}

abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String descriptionBody});
}

class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object descriptionBody = freezed,
  }) {
    return _then(_DescriptionChanged(
      descriptionBody == freezed
          ? _value.descriptionBody
          : descriptionBody as String,
    ));
  }
}

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descriptionBody)
      : assert(descriptionBody != null);

  @override
  final String descriptionBody;

  @override
  String toString() {
    return 'ItemFormEvent.descriptionChanged(descriptionBody: $descriptionBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.descriptionBody, descriptionBody) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionBody, descriptionBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(descriptionBody);

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return descriptionChanged(descriptionBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ItemFormEvent {
  const factory _DescriptionChanged(String descriptionBody) =
      _$_DescriptionChanged;

  String get descriptionBody;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

abstract class _$SelectedIndexChangedCopyWith<$Res> {
  factory _$SelectedIndexChangedCopyWith(_SelectedIndexChanged value,
          $Res Function(_SelectedIndexChanged) then) =
      __$SelectedIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

class __$SelectedIndexChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$SelectedIndexChangedCopyWith<$Res> {
  __$SelectedIndexChangedCopyWithImpl(
      _SelectedIndexChanged _value, $Res Function(_SelectedIndexChanged) _then)
      : super(_value, (v) => _then(v as _SelectedIndexChanged));

  @override
  _SelectedIndexChanged get _value => super._value as _SelectedIndexChanged;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_SelectedIndexChanged(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_SelectedIndexChanged implements _SelectedIndexChanged {
  const _$_SelectedIndexChanged(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'ItemFormEvent.selectedIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedIndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$SelectedIndexChangedCopyWith<_SelectedIndexChanged> get copyWith =>
      __$SelectedIndexChangedCopyWithImpl<_SelectedIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return selectedIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedIndexChanged != null) {
      return selectedIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return selectedIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedIndexChanged != null) {
      return selectedIndexChanged(this);
    }
    return orElse();
  }
}

abstract class _SelectedIndexChanged implements ItemFormEvent {
  const factory _SelectedIndexChanged(int index) = _$_SelectedIndexChanged;

  int get index;
  _$SelectedIndexChangedCopyWith<_SelectedIndexChanged> get copyWith;
}

abstract class _$IsFavoriteChangedCopyWith<$Res> {
  factory _$IsFavoriteChangedCopyWith(
          _IsFavoriteChanged value, $Res Function(_IsFavoriteChanged) then) =
      __$IsFavoriteChangedCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId, UniqueId groupId});
}

class __$IsFavoriteChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$IsFavoriteChangedCopyWith<$Res> {
  __$IsFavoriteChangedCopyWithImpl(
      _IsFavoriteChanged _value, $Res Function(_IsFavoriteChanged) _then)
      : super(_value, (v) => _then(v as _IsFavoriteChanged));

  @override
  _IsFavoriteChanged get _value => super._value as _IsFavoriteChanged;

  @override
  $Res call({
    Object categoryId = freezed,
    Object groupId = freezed,
  }) {
    return _then(_IsFavoriteChanged(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      groupId == freezed ? _value.groupId : groupId as UniqueId,
    ));
  }
}

class _$_IsFavoriteChanged implements _IsFavoriteChanged {
  const _$_IsFavoriteChanged(this.categoryId, this.groupId)
      : assert(categoryId != null),
        assert(groupId != null);

  @override
  final UniqueId categoryId;
  @override
  final UniqueId groupId;

  @override
  String toString() {
    return 'ItemFormEvent.isFavoriteChanged(categoryId: $categoryId, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsFavoriteChanged &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(other.groupId, groupId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(groupId);

  @override
  _$IsFavoriteChangedCopyWith<_IsFavoriteChanged> get copyWith =>
      __$IsFavoriteChangedCopyWithImpl<_IsFavoriteChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return isFavoriteChanged(categoryId, groupId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isFavoriteChanged != null) {
      return isFavoriteChanged(categoryId, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return isFavoriteChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isFavoriteChanged != null) {
      return isFavoriteChanged(this);
    }
    return orElse();
  }
}

abstract class _IsFavoriteChanged implements ItemFormEvent {
  const factory _IsFavoriteChanged(UniqueId categoryId, UniqueId groupId) =
      _$_IsFavoriteChanged;

  UniqueId get categoryId;
  UniqueId get groupId;
  _$IsFavoriteChangedCopyWith<_IsFavoriteChanged> get copyWith;
}

abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({int index, ImageSource imageSource});
}

class __$ImageChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object index = freezed,
    Object imageSource = freezed,
  }) {
    return _then(_ImageChanged(
      index == freezed ? _value.index : index as int,
      imageSource == freezed ? _value.imageSource : imageSource as ImageSource,
    ));
  }
}

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.index, this.imageSource)
      : assert(index != null),
        assert(imageSource != null);

  @override
  final int index;
  @override
  final ImageSource imageSource;

  @override
  String toString() {
    return 'ItemFormEvent.pictureChanged(index: $index, imageSource: $imageSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.imageSource, imageSource) ||
                const DeepCollectionEquality()
                    .equals(other.imageSource, imageSource)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(imageSource);

  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return pictureChanged(index, imageSource);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pictureChanged != null) {
      return pictureChanged(index, imageSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return pictureChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pictureChanged != null) {
      return pictureChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements ItemFormEvent {
  const factory _ImageChanged(int index, ImageSource imageSource) =
      _$_ImageChanged;

  int get index;
  ImageSource get imageSource;
  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

abstract class _$PictureRemovedCopyWith<$Res> {
  factory _$PictureRemovedCopyWith(
          _PictureRemoved value, $Res Function(_PictureRemoved) then) =
      __$PictureRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

class __$PictureRemovedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$PictureRemovedCopyWith<$Res> {
  __$PictureRemovedCopyWithImpl(
      _PictureRemoved _value, $Res Function(_PictureRemoved) _then)
      : super(_value, (v) => _then(v as _PictureRemoved));

  @override
  _PictureRemoved get _value => super._value as _PictureRemoved;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_PictureRemoved(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_PictureRemoved implements _PictureRemoved {
  const _$_PictureRemoved(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'ItemFormEvent.pictureRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PictureRemoved &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$PictureRemovedCopyWith<_PictureRemoved> get copyWith =>
      __$PictureRemovedCopyWithImpl<_PictureRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return pictureRemoved(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pictureRemoved != null) {
      return pictureRemoved(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return pictureRemoved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pictureRemoved != null) {
      return pictureRemoved(this);
    }
    return orElse();
  }
}

abstract class _PictureRemoved implements ItemFormEvent {
  const factory _PictureRemoved(int index) = _$_PictureRemoved;

  int get index;
  _$PictureRemovedCopyWith<_PictureRemoved> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({UniqueId categoryId, UniqueId groupId});
}

class __$SavedCopyWithImpl<$Res> extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object categoryId = freezed,
    Object groupId = freezed,
  }) {
    return _then(_Saved(
      categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      groupId == freezed ? _value.groupId : groupId as UniqueId,
    ));
  }
}

class _$_Saved implements _Saved {
  const _$_Saved(this.categoryId, this.groupId)
      : assert(categoryId != null),
        assert(groupId != null);

  @override
  final UniqueId categoryId;
  @override
  final UniqueId groupId;

  @override
  String toString() {
    return 'ItemFormEvent.saved(categoryId: $categoryId, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(other.groupId, groupId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(groupId);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialOption),
    @required Result titleChanged(String title),
    @required Result priceChanged(String price),
    @required Result descriptionChanged(String descriptionBody),
    @required Result selectedIndexChanged(int index),
    @required Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    @required Result pictureChanged(int index, ImageSource imageSource),
    @required Result pictureRemoved(int index),
    @required Result saved(UniqueId categoryId, UniqueId groupId),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return saved(categoryId, groupId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialOption),
    Result titleChanged(String title),
    Result priceChanged(String price),
    Result descriptionChanged(String descriptionBody),
    Result selectedIndexChanged(int index),
    Result isFavoriteChanged(UniqueId categoryId, UniqueId groupId),
    Result pictureChanged(int index, ImageSource imageSource),
    Result pictureRemoved(int index),
    Result saved(UniqueId categoryId, UniqueId groupId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(categoryId, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result selectedIndexChanged(_SelectedIndexChanged value),
    @required Result isFavoriteChanged(_IsFavoriteChanged value),
    @required Result pictureChanged(_ImageChanged value),
    @required Result pictureRemoved(_PictureRemoved value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(priceChanged != null);
    assert(descriptionChanged != null);
    assert(selectedIndexChanged != null);
    assert(isFavoriteChanged != null);
    assert(pictureChanged != null);
    assert(pictureRemoved != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result priceChanged(_PriceChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result selectedIndexChanged(_SelectedIndexChanged value),
    Result isFavoriteChanged(_IsFavoriteChanged value),
    Result pictureChanged(_ImageChanged value),
    Result pictureRemoved(_PictureRemoved value),
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

abstract class _Saved implements ItemFormEvent {
  const factory _Saved(UniqueId categoryId, UniqueId groupId) = _$_Saved;

  UniqueId get categoryId;
  UniqueId get groupId;
  _$SavedCopyWith<_Saved> get copyWith;
}

class _$ItemFormStateTearOff {
  const _$ItemFormStateTearOff();

  _ItemFormState call(
      {@required Item item,
      @required bool showErrorMessages,
      @required Option<Either<ItemFailure, Unit>> itemFailureOrSuccessOption,
      @required bool isEditing,
      @required bool isSaving,
      @required List<Option<File>> temporaryImageFiles,
      @required List<bool> isPictureRemoved}) {
    return _ItemFormState(
      item: item,
      showErrorMessages: showErrorMessages,
      itemFailureOrSuccessOption: itemFailureOrSuccessOption,
      isEditing: isEditing,
      isSaving: isSaving,
      temporaryImageFiles: temporaryImageFiles,
      isPictureRemoved: isPictureRemoved,
    );
  }
}

// ignore: unused_element
const $ItemFormState = _$ItemFormStateTearOff();

mixin _$ItemFormState {
  Item get item;
  bool get showErrorMessages;
  Option<Either<ItemFailure, Unit>> get itemFailureOrSuccessOption;
  bool get isEditing;
  bool get isSaving;
  List<Option<File>> get temporaryImageFiles;
  List<bool> get isPictureRemoved;

  $ItemFormStateCopyWith<ItemFormState> get copyWith;
}

abstract class $ItemFormStateCopyWith<$Res> {
  factory $ItemFormStateCopyWith(
          ItemFormState value, $Res Function(ItemFormState) then) =
      _$ItemFormStateCopyWithImpl<$Res>;
  $Res call(
      {Item item,
      bool showErrorMessages,
      Option<Either<ItemFailure, Unit>> itemFailureOrSuccessOption,
      bool isEditing,
      bool isSaving,
      List<Option<File>> temporaryImageFiles,
      List<bool> isPictureRemoved});

  $ItemCopyWith<$Res> get item;
}

class _$ItemFormStateCopyWithImpl<$Res>
    implements $ItemFormStateCopyWith<$Res> {
  _$ItemFormStateCopyWithImpl(this._value, this._then);

  final ItemFormState _value;
  // ignore: unused_field
  final $Res Function(ItemFormState) _then;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object itemFailureOrSuccessOption = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object temporaryImageFiles = freezed,
    Object isPictureRemoved = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as Item,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      itemFailureOrSuccessOption: itemFailureOrSuccessOption == freezed
          ? _value.itemFailureOrSuccessOption
          : itemFailureOrSuccessOption as Option<Either<ItemFailure, Unit>>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      temporaryImageFiles: temporaryImageFiles == freezed
          ? _value.temporaryImageFiles
          : temporaryImageFiles as List<Option<File>>,
      isPictureRemoved: isPictureRemoved == freezed
          ? _value.isPictureRemoved
          : isPictureRemoved as List<bool>,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

abstract class _$ItemFormStateCopyWith<$Res>
    implements $ItemFormStateCopyWith<$Res> {
  factory _$ItemFormStateCopyWith(
          _ItemFormState value, $Res Function(_ItemFormState) then) =
      __$ItemFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Item item,
      bool showErrorMessages,
      Option<Either<ItemFailure, Unit>> itemFailureOrSuccessOption,
      bool isEditing,
      bool isSaving,
      List<Option<File>> temporaryImageFiles,
      List<bool> isPictureRemoved});

  @override
  $ItemCopyWith<$Res> get item;
}

class __$ItemFormStateCopyWithImpl<$Res>
    extends _$ItemFormStateCopyWithImpl<$Res>
    implements _$ItemFormStateCopyWith<$Res> {
  __$ItemFormStateCopyWithImpl(
      _ItemFormState _value, $Res Function(_ItemFormState) _then)
      : super(_value, (v) => _then(v as _ItemFormState));

  @override
  _ItemFormState get _value => super._value as _ItemFormState;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object itemFailureOrSuccessOption = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object temporaryImageFiles = freezed,
    Object isPictureRemoved = freezed,
  }) {
    return _then(_ItemFormState(
      item: item == freezed ? _value.item : item as Item,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      itemFailureOrSuccessOption: itemFailureOrSuccessOption == freezed
          ? _value.itemFailureOrSuccessOption
          : itemFailureOrSuccessOption as Option<Either<ItemFailure, Unit>>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      temporaryImageFiles: temporaryImageFiles == freezed
          ? _value.temporaryImageFiles
          : temporaryImageFiles as List<Option<File>>,
      isPictureRemoved: isPictureRemoved == freezed
          ? _value.isPictureRemoved
          : isPictureRemoved as List<bool>,
    ));
  }
}

class _$_ItemFormState implements _ItemFormState {
  const _$_ItemFormState(
      {@required this.item,
      @required this.showErrorMessages,
      @required this.itemFailureOrSuccessOption,
      @required this.isEditing,
      @required this.isSaving,
      @required this.temporaryImageFiles,
      @required this.isPictureRemoved})
      : assert(item != null),
        assert(showErrorMessages != null),
        assert(itemFailureOrSuccessOption != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(temporaryImageFiles != null),
        assert(isPictureRemoved != null);

  @override
  final Item item;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ItemFailure, Unit>> itemFailureOrSuccessOption;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final List<Option<File>> temporaryImageFiles;
  @override
  final List<bool> isPictureRemoved;

  @override
  String toString() {
    return 'ItemFormState(item: $item, showErrorMessages: $showErrorMessages, itemFailureOrSuccessOption: $itemFailureOrSuccessOption, isEditing: $isEditing, isSaving: $isSaving, temporaryImageFiles: $temporaryImageFiles, isPictureRemoved: $isPictureRemoved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemFormState &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.itemFailureOrSuccessOption,
                    itemFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.itemFailureOrSuccessOption,
                    itemFailureOrSuccessOption)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.temporaryImageFiles, temporaryImageFiles) ||
                const DeepCollectionEquality()
                    .equals(other.temporaryImageFiles, temporaryImageFiles)) &&
            (identical(other.isPictureRemoved, isPictureRemoved) ||
                const DeepCollectionEquality()
                    .equals(other.isPictureRemoved, isPictureRemoved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(itemFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(temporaryImageFiles) ^
      const DeepCollectionEquality().hash(isPictureRemoved);

  @override
  _$ItemFormStateCopyWith<_ItemFormState> get copyWith =>
      __$ItemFormStateCopyWithImpl<_ItemFormState>(this, _$identity);
}

abstract class _ItemFormState implements ItemFormState {
  const factory _ItemFormState(
      {@required Item item,
      @required bool showErrorMessages,
      @required Option<Either<ItemFailure, Unit>> itemFailureOrSuccessOption,
      @required bool isEditing,
      @required bool isSaving,
      @required List<Option<File>> temporaryImageFiles,
      @required List<bool> isPictureRemoved}) = _$_ItemFormState;

  @override
  Item get item;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ItemFailure, Unit>> get itemFailureOrSuccessOption;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  List<Option<File>> get temporaryImageFiles;
  @override
  List<bool> get isPictureRemoved;
  @override
  _$ItemFormStateCopyWith<_ItemFormState> get copyWith;
}
