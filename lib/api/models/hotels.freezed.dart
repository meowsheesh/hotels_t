// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hotels _$HotelsFromJson(Map<String, dynamic> json) {
  return _Hotels.fromJson(json);
}

/// @nodoc
mixin _$Hotels {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  @JsonKey(name: "suites_availability")
  String get suitesAvailability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsCopyWith<Hotels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsCopyWith<$Res> {
  factory $HotelsCopyWith(Hotels value, $Res Function(Hotels) then) =
      _$HotelsCopyWithImpl<$Res, Hotels>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      double stars,
      double distance,
      @JsonKey(name: "suites_availability") String suitesAvailability});
}

/// @nodoc
class _$HotelsCopyWithImpl<$Res, $Val extends Hotels>
    implements $HotelsCopyWith<$Res> {
  _$HotelsCopyWithImpl(this._value, this._then);

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
    Object? suitesAvailability = null,
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
      suitesAvailability: null == suitesAvailability
          ? _value.suitesAvailability
          : suitesAvailability // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelsImplCopyWith<$Res> implements $HotelsCopyWith<$Res> {
  factory _$$HotelsImplCopyWith(
          _$HotelsImpl value, $Res Function(_$HotelsImpl) then) =
      __$$HotelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      double stars,
      double distance,
      @JsonKey(name: "suites_availability") String suitesAvailability});
}

/// @nodoc
class __$$HotelsImplCopyWithImpl<$Res>
    extends _$HotelsCopyWithImpl<$Res, _$HotelsImpl>
    implements _$$HotelsImplCopyWith<$Res> {
  __$$HotelsImplCopyWithImpl(
      _$HotelsImpl _value, $Res Function(_$HotelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? stars = null,
    Object? distance = null,
    Object? suitesAvailability = null,
  }) {
    return _then(_$HotelsImpl(
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
      suitesAvailability: null == suitesAvailability
          ? _value.suitesAvailability
          : suitesAvailability // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsImpl implements _Hotels {
  const _$HotelsImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.stars,
      required this.distance,
      @JsonKey(name: "suites_availability") required this.suitesAvailability});

  factory _$HotelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsImplFromJson(json);

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
  @JsonKey(name: "suites_availability")
  final String suitesAvailability;

  @override
  String toString() {
    return 'Hotels(id: $id, name: $name, address: $address, stars: $stars, distance: $distance, suitesAvailability: $suitesAvailability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.suitesAvailability, suitesAvailability) ||
                other.suitesAvailability == suitesAvailability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, address, stars, distance, suitesAvailability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsImplCopyWith<_$HotelsImpl> get copyWith =>
      __$$HotelsImplCopyWithImpl<_$HotelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsImplToJson(
      this,
    );
  }
}

abstract class _Hotels implements Hotels {
  const factory _Hotels(
      {required final int id,
      required final String name,
      required final String address,
      required final double stars,
      required final double distance,
      @JsonKey(name: "suites_availability")
      required final String suitesAvailability}) = _$HotelsImpl;

  factory _Hotels.fromJson(Map<String, dynamic> json) = _$HotelsImpl.fromJson;

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
  @JsonKey(name: "suites_availability")
  String get suitesAvailability;
  @override
  @JsonKey(ignore: true)
  _$$HotelsImplCopyWith<_$HotelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
