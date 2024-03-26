import 'package:dio/dio.dart';
import 'package:hotels_t/api/models/hotels.dart';
import 'package:hotels_t/api/models/hotels_info.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://terexov.ru/test')
abstract class HotelsApiService {
  factory HotelsApiService(Dio dio) = _HotelsApiService;

  @GET('/0777.json')
  Future<List<Hotels>> getHotels();

  @GET('/{id}.json')
  Future<HotelInfo> getHotelInfo(
      @Path('id') int id,
      );
}