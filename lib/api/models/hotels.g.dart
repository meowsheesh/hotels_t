// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsImpl _$$HotelsImplFromJson(Map<String, dynamic> json) => _$HotelsImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      stars: (json['stars'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      suitesAvailability: json['suites_availability'] as String,
    );

Map<String, dynamic> _$$HotelsImplToJson(_$HotelsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'stars': instance.stars,
      'distance': instance.distance,
      'suites_availability': instance.suitesAvailability,
    };
