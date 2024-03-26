import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotels_info.freezed.dart';
part 'hotels_info.g.dart';

@freezed
class HotelInfo with _$HotelInfo {
  const factory HotelInfo({
    required int id,
    required String name,
    required String address,
    required double stars,
    required double distance,
    @Default('none') String image,
    @JsonKey(name: "suites_availability")
    required String suitesAvailability,
    required double lat,
    required double lon,
  }) = _HotelInfo;

  factory HotelInfo.fromJson(Map<String, Object?> json) => _$HotelInfoFromJson(json);
}
