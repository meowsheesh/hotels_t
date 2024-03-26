import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels_t/api/api.dart';
import 'package:hotels_t/api/models/hotels.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._hotelsApiService) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        search: (event) async => await _loadHotels(event, emit),
      );
    });
  }
  final HotelsApiService _hotelsApiService;

  _loadHotels(_LoadHotels event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      List<Hotels> hotels = await _hotelsApiService.getHotels();
      if(hotels.isNotEmpty){
        emit(HomeState.loaded(hotels: hotels));
      } else {
        emit(const HomeState.failure());
      }
    } catch (e,s){
      print(e);
      print(s);
      emit(const HomeState.failure());
    }
  }
}
