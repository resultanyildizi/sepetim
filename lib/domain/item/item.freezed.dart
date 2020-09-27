// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required Price price,
      @required DescriptionBody description,
      @required List3<ImageUrl> imageUrls,
      @required SelectedIndex selectedIndex,
      @required List5<LinkObject> linkObjects,
      @required bool isFavorite,
      @required DateTime lastEditTime}) {
    return _Item(
      uid: uid,
      title: title,
      price: price,
      description: description,
      imageUrls: imageUrls,
      selectedIndex: selectedIndex,
      linkObjects: linkObjects,
      isFavorite: isFavorite,
      lastEditTime: lastEditTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  UniqueId get uid;
  ShortTitle get title;
  Price get price;
  DescriptionBody get description;
  List3<ImageUrl> get imageUrls;
  SelectedIndex get selectedIndex;
  List5<LinkObject> get linkObjects;
  bool get isFavorite;
  DateTime get lastEditTime;

  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uid,
      ShortTitle title,
      Price price,
      DescriptionBody description,
      List3<ImageUrl> imageUrls,
      SelectedIndex selectedIndex,
      List5<LinkObject> linkObjects,
      bool isFavorite,
      DateTime lastEditTime});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object price = freezed,
    Object description = freezed,
    Object imageUrls = freezed,
    Object selectedIndex = freezed,
    Object linkObjects = freezed,
    Object isFavorite = freezed,
    Object lastEditTime = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      price: price == freezed ? _value.price : price as Price,
      description: description == freezed
          ? _value.description
          : description as DescriptionBody,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls as List3<ImageUrl>,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as SelectedIndex,
      linkObjects: linkObjects == freezed
          ? _value.linkObjects
          : linkObjects as List5<LinkObject>,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
      lastEditTime: lastEditTime == freezed
          ? _value.lastEditTime
          : lastEditTime as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uid,
      ShortTitle title,
      Price price,
      DescriptionBody description,
      List3<ImageUrl> imageUrls,
      SelectedIndex selectedIndex,
      List5<LinkObject> linkObjects,
      bool isFavorite,
      DateTime lastEditTime});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object price = freezed,
    Object description = freezed,
    Object imageUrls = freezed,
    Object selectedIndex = freezed,
    Object linkObjects = freezed,
    Object isFavorite = freezed,
    Object lastEditTime = freezed,
  }) {
    return _then(_Item(
      uid: uid == freezed ? _value.uid : uid as UniqueId,
      title: title == freezed ? _value.title : title as ShortTitle,
      price: price == freezed ? _value.price : price as Price,
      description: description == freezed
          ? _value.description
          : description as DescriptionBody,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls as List3<ImageUrl>,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as SelectedIndex,
      linkObjects: linkObjects == freezed
          ? _value.linkObjects
          : linkObjects as List5<LinkObject>,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
      lastEditTime: lastEditTime == freezed
          ? _value.lastEditTime
          : lastEditTime as DateTime,
    ));
  }
}

/// @nodoc
class _$_Item extends _Item {
  const _$_Item(
      {@required this.uid,
      @required this.title,
      @required this.price,
      @required this.description,
      @required this.imageUrls,
      @required this.selectedIndex,
      @required this.linkObjects,
      @required this.isFavorite,
      @required this.lastEditTime})
      : assert(uid != null),
        assert(title != null),
        assert(price != null),
        assert(description != null),
        assert(imageUrls != null),
        assert(selectedIndex != null),
        assert(linkObjects != null),
        assert(isFavorite != null),
        assert(lastEditTime != null),
        super._();

  @override
  final UniqueId uid;
  @override
  final ShortTitle title;
  @override
  final Price price;
  @override
  final DescriptionBody description;
  @override
  final List3<ImageUrl> imageUrls;
  @override
  final SelectedIndex selectedIndex;
  @override
  final List5<LinkObject> linkObjects;
  @override
  final bool isFavorite;
  @override
  final DateTime lastEditTime;

  @override
  String toString() {
    return 'Item(uid: $uid, title: $title, price: $price, description: $description, imageUrls: $imageUrls, selectedIndex: $selectedIndex, linkObjects: $linkObjects, isFavorite: $isFavorite, lastEditTime: $lastEditTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)) &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)) &&
            (identical(other.linkObjects, linkObjects) ||
                const DeepCollectionEquality()
                    .equals(other.linkObjects, linkObjects)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)) &&
            (identical(other.lastEditTime, lastEditTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastEditTime, lastEditTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrls) ^
      const DeepCollectionEquality().hash(selectedIndex) ^
      const DeepCollectionEquality().hash(linkObjects) ^
      const DeepCollectionEquality().hash(isFavorite) ^
      const DeepCollectionEquality().hash(lastEditTime);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item extends Item {
  const _Item._() : super._();
  const factory _Item(
      {@required UniqueId uid,
      @required ShortTitle title,
      @required Price price,
      @required DescriptionBody description,
      @required List3<ImageUrl> imageUrls,
      @required SelectedIndex selectedIndex,
      @required List5<LinkObject> linkObjects,
      @required bool isFavorite,
      @required DateTime lastEditTime}) = _$_Item;

  @override
  UniqueId get uid;
  @override
  ShortTitle get title;
  @override
  Price get price;
  @override
  DescriptionBody get description;
  @override
  List3<ImageUrl> get imageUrls;
  @override
  SelectedIndex get selectedIndex;
  @override
  List5<LinkObject> get linkObjects;
  @override
  bool get isFavorite;
  @override
  DateTime get lastEditTime;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}
