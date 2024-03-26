// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelInfo _$HotelInfoFromJson(Map<String, dynamic> json) {
  return _HotelInfo.fromJson(json);
}

/// @nodoc
mixin _$HotelInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "suites_availability")
  String get suitesAvailability => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelInfoCopyWith<HotelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelInfoCopyWith<$Res> {
  factory $HotelInfoCopyWith(HotelInfo value, $Res Function(HotelInfo) then) =
      _$HotelInfoCopyWithImpl<$Res, HotelInfo>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      double stars,
      double distance,
      String image,
      @JsonKey(name: "suites_availability") String suitesAvailability,
      double lat,
      double lon});
}

/// @nodoc
class _$HotelInfoCopyWithImpl<$Res, $Val extends HotelInfo>
    implements $HotelInfoCopyWith<$Res> {
  _$HotelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? stars = null,
    Object? distance = null,
    Object? image = null,
    Object? suitesAvailability = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      suitesAvailability: null == suitesAvailability
          ? _value.suitesAvailability
          : suitesAvailability // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelInfoImplCopyWith<$Res>
    implements $HotelInfoCopyWith<$Res> {
  factory _$$HotelInfoImplCopyWith(
          _$HotelInfoImpl value, $Res Function(_$HotelInfoImpl) then) =
      __$$HotelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      double stars,
      double distance,
      String image,
      @JsonKey(name: "suites_availability") String suitesAvailability,
      double lat,
      double lon});
}

/// @nodoc
class __$$HotelInfoImplCopyWithImpl<$Res>
    extends _$HotelInfoCopyWithImpl<$Res, _$HotelInfoImpl>
    implements _$$HotelInfoImplCopyWith<$Res> {
  __$$HotelInfoImplCopyWithImpl(
      _$HotelInfoImpl _value, $Res Function(_$HotelInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? stars = null,
    Object? distance = null,
    Object? image = null,
    Object? suitesAvailability = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$HotelInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      suitesAvailability: null == suitesAvailability
          ? _value.suitesAvailability
          : suitesAvailability // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelInfoImpl implements _HotelInfo {
  const _$HotelInfoImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.stars,
      required this.distance,
      this.image = 'none',
      @JsonKey(name: "suites_availability") required this.suitesAvailability,
      required this.lat,
      required this.lon});

  factory _$HotelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final double stars;
  @override
  final double distance;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey(name: "suites_availability")
  final String suitesAvailability;
  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'HotelInfo(id: $id, name: $name, address: $address, stars: $stars, distance: $distance, image: $image, suitesAvailability: $suitesAvailability, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.suitesAvailability, suitesAvailability) ||
                other.suitesAvailability == suitesAvailability) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, stars,
      distance, image, suitesAvailability, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelInfoImplCopyWith<_$HotelInfoImpl> get copyWith =>
      __$$HotelInfoImplCopyWithImpl<_$HotelInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelInfoImplToJson(
      this,
    );
  }
}

abstract class _HotelInfo implements HotelInfo {
  const factory _HotelInfo(
      {required final int id,
      required final String name,
      required final String address,
      required final double stars,
      required final double distance,
      final String image,
      @JsonKey(name: "suites_availability")
      required final String suitesAvailability,
      required final double lat,
      required final double lon}) = _$HotelInfoImpl;

  factory _HotelInfo.fromJson(Map<String, dynamic> json) =
      _$HotelInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  double get stars;
  @override
  double get distance;
  @override
  String get image;
  @override
  @JsonKey(name: "suites_availability")
  String get suitesAvailability;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$HotelInfoImplCopyWith<_$HotelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
