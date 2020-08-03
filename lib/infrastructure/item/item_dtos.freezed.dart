// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

class _$ItemDtoTearOff {
  const _$ItemDtoTearOff();

  _ItemDto call(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required double price,
      @required String description,
      @required List<String> imageUrls,
      @required int selectedIndex,
      @required List<LinkObjectDto> linkObjects,
      @required bool isFavorite,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
      @required int lastEditTime}) {
    return _ItemDto(
      uid: uid,
      title: title,
      price: price,
      description: description,
      imageUrls: imageUrls,
      selectedIndex: selectedIndex,
      linkObjects: linkObjects,
      isFavorite: isFavorite,
      serverTimeStamp: serverTimeStamp,
      lastEditTime: lastEditTime,
    );
  }
}

// ignore: unused_element
const $ItemDto = _$ItemDtoTearOff();

mixin _$ItemDto {
  @JsonKey(ignore: true)
  String get uid;
  String get title;
  double get price;
  String get description;
  List<String> get imageUrls;
  int get selectedIndex;
  List<LinkObjectDto> get linkObjects;
  bool get isFavorite;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  int get lastEditTime;

  Map<String, dynamic> toJson();
  $ItemDtoCopyWith<ItemDto> get copyWith;
}

abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      double price,
      String description,
      List<String> imageUrls,
      int selectedIndex,
      List<LinkObjectDto> linkObjects,
      bool isFavorite,
      @ServerTimeStampConverter() FieldValue serverTimeStamp,
      int lastEditTime});
}

class _$ItemDtoCopyWithImpl<$Res> implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  final ItemDto _value;
  // ignore: unused_field
  final $Res Function(ItemDto) _then;

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
    Object serverTimeStamp = freezed,
    Object lastEditTime = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as double,
      description:
          description == freezed ? _value.description : description as String,
      imageUrls:
          imageUrls == freezed ? _value.imageUrls : imageUrls as List<String>,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
      linkObjects: linkObjects == freezed
          ? _value.linkObjects
          : linkObjects as List<LinkObjectDto>,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      lastEditTime:
          lastEditTime == freezed ? _value.lastEditTime : lastEditTime as int,
    ));
  }
}

abstract class _$ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$ItemDtoCopyWith(_ItemDto value, $Res Function(_ItemDto) then) =
      __$ItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String uid,
      String title,
      double price,
      String description,
      List<String> imageUrls,
      int selectedIndex,
      List<LinkObjectDto> linkObjects,
      bool isFavorite,
      @ServerTimeStampConverter() FieldValue serverTimeStamp,
      int lastEditTime});
}

class __$ItemDtoCopyWithImpl<$Res> extends _$ItemDtoCopyWithImpl<$Res>
    implements _$ItemDtoCopyWith<$Res> {
  __$ItemDtoCopyWithImpl(_ItemDto _value, $Res Function(_ItemDto) _then)
      : super(_value, (v) => _then(v as _ItemDto));

  @override
  _ItemDto get _value => super._value as _ItemDto;

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
    Object serverTimeStamp = freezed,
    Object lastEditTime = freezed,
  }) {
    return _then(_ItemDto(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as double,
      description:
          description == freezed ? _value.description : description as String,
      imageUrls:
          imageUrls == freezed ? _value.imageUrls : imageUrls as List<String>,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
      linkObjects: linkObjects == freezed
          ? _value.linkObjects
          : linkObjects as List<LinkObjectDto>,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      lastEditTime:
          lastEditTime == freezed ? _value.lastEditTime : lastEditTime as int,
    ));
  }
}

@JsonSerializable()
class _$_ItemDto extends _ItemDto {
  const _$_ItemDto(
      {@JsonKey(ignore: true) this.uid,
      @required this.title,
      @required this.price,
      @required this.description,
      @required this.imageUrls,
      @required this.selectedIndex,
      @required this.linkObjects,
      @required this.isFavorite,
      @required @ServerTimeStampConverter() this.serverTimeStamp,
      @required this.lastEditTime})
      : assert(title != null),
        assert(price != null),
        assert(description != null),
        assert(imageUrls != null),
        assert(selectedIndex != null),
        assert(linkObjects != null),
        assert(isFavorite != null),
        assert(serverTimeStamp != null),
        assert(lastEditTime != null),
        super._();

  factory _$_ItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String uid;
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  @override
  final List<String> imageUrls;
  @override
  final int selectedIndex;
  @override
  final List<LinkObjectDto> linkObjects;
  @override
  final bool isFavorite;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;
  @override
  final int lastEditTime;

  @override
  String toString() {
    return 'ItemDto(uid: $uid, title: $title, price: $price, description: $description, imageUrls: $imageUrls, selectedIndex: $selectedIndex, linkObjects: $linkObjects, isFavorite: $isFavorite, serverTimeStamp: $serverTimeStamp, lastEditTime: $lastEditTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDto &&
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
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)) &&
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
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(lastEditTime);

  @override
  _$ItemDtoCopyWith<_ItemDto> get copyWith =>
      __$ItemDtoCopyWithImpl<_ItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemDtoToJson(this);
  }
}

abstract class _ItemDto extends ItemDto {
  const _ItemDto._() : super._();
  const factory _ItemDto(
      {@JsonKey(ignore: true) String uid,
      @required String title,
      @required double price,
      @required String description,
      @required List<String> imageUrls,
      @required int selectedIndex,
      @required List<LinkObjectDto> linkObjects,
      @required bool isFavorite,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
      @required int lastEditTime}) = _$_ItemDto;

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$_ItemDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  String get title;
  @override
  double get price;
  @override
  String get description;
  @override
  List<String> get imageUrls;
  @override
  int get selectedIndex;
  @override
  List<LinkObjectDto> get linkObjects;
  @override
  bool get isFavorite;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  int get lastEditTime;
  @override
  _$ItemDtoCopyWith<_ItemDto> get copyWith;
}

LinkObjectDto _$LinkObjectDtoFromJson(Map<String, dynamic> json) {
  return _LinkObjectDto.fromJson(json);
}

class _$LinkObjectDtoTearOff {
  const _$LinkObjectDtoTearOff();

  _LinkObjectDto call(
      {@required String uid, @required String title, @required String link}) {
    return _LinkObjectDto(
      uid: uid,
      title: title,
      link: link,
    );
  }
}

// ignore: unused_element
const $LinkObjectDto = _$LinkObjectDtoTearOff();

mixin _$LinkObjectDto {
  String get uid;
  String get title;
  String get link;

  Map<String, dynamic> toJson();
  $LinkObjectDtoCopyWith<LinkObjectDto> get copyWith;
}

abstract class $LinkObjectDtoCopyWith<$Res> {
  factory $LinkObjectDtoCopyWith(
          LinkObjectDto value, $Res Function(LinkObjectDto) then) =
      _$LinkObjectDtoCopyWithImpl<$Res>;
  $Res call({String uid, String title, String link});
}

class _$LinkObjectDtoCopyWithImpl<$Res>
    implements $LinkObjectDtoCopyWith<$Res> {
  _$LinkObjectDtoCopyWithImpl(this._value, this._then);

  final LinkObjectDto _value;
  // ignore: unused_field
  final $Res Function(LinkObjectDto) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object link = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

abstract class _$LinkObjectDtoCopyWith<$Res>
    implements $LinkObjectDtoCopyWith<$Res> {
  factory _$LinkObjectDtoCopyWith(
          _LinkObjectDto value, $Res Function(_LinkObjectDto) then) =
      __$LinkObjectDtoCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String title, String link});
}

class __$LinkObjectDtoCopyWithImpl<$Res>
    extends _$LinkObjectDtoCopyWithImpl<$Res>
    implements _$LinkObjectDtoCopyWith<$Res> {
  __$LinkObjectDtoCopyWithImpl(
      _LinkObjectDto _value, $Res Function(_LinkObjectDto) _then)
      : super(_value, (v) => _then(v as _LinkObjectDto));

  @override
  _LinkObjectDto get _value => super._value as _LinkObjectDto;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object link = freezed,
  }) {
    return _then(_LinkObjectDto(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

@JsonSerializable()
class _$_LinkObjectDto extends _LinkObjectDto {
  const _$_LinkObjectDto(
      {@required this.uid, @required this.title, @required this.link})
      : assert(uid != null),
        assert(title != null),
        assert(link != null),
        super._();

  factory _$_LinkObjectDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LinkObjectDtoFromJson(json);

  @override
  final String uid;
  @override
  final String title;
  @override
  final String link;

  @override
  String toString() {
    return 'LinkObjectDto(uid: $uid, title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkObjectDto &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(link);

  @override
  _$LinkObjectDtoCopyWith<_LinkObjectDto> get copyWith =>
      __$LinkObjectDtoCopyWithImpl<_LinkObjectDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinkObjectDtoToJson(this);
  }
}

abstract class _LinkObjectDto extends LinkObjectDto {
  const _LinkObjectDto._() : super._();
  const factory _LinkObjectDto(
      {@required String uid,
      @required String title,
      @required String link}) = _$_LinkObjectDto;

  factory _LinkObjectDto.fromJson(Map<String, dynamic> json) =
      _$_LinkObjectDto.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  String get link;
  @override
  _$LinkObjectDtoCopyWith<_LinkObjectDto> get copyWith;
}
