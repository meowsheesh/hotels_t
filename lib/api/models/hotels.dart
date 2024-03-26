import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotels.freezed.dart';
part 'hotels.g.dart';

@freezed
class Hotels with _$Hotels {
  const factory Hotels({
    required int id,
    required String name,
    required String address,
    required double stars,
    required double distance,
    @JsonKey(name: "suites_availability") required String suitesAvailability,
  }) = _Hotels;

  factory Hotels.fromJson(Map<String, Object?> json) => _$HotelsFromJson(json);
}
