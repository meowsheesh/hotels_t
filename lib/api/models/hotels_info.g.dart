// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelInfoImpl _$$HotelInfoImplFromJson(Map<String, dynamic> json) =>
    _$HotelInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      stars: (json['stars'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      image: json['image'] as String? ?? 'none',
      suitesAvailability: json['suites_availability'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$HotelInfoImplToJson(_$HotelInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'stars': instance.stars,
      'distance': instance.distance,
      'image': instance.image,
      'suites_availability': instance.suitesAvailability,
      'lat': instance.lat,
      'lon': instance.lon,
    };
