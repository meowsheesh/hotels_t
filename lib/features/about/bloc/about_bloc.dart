import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels_t/api/models/hotels_info.dart';

import '../../../api/api.dart';

part 'about_event.dart';
part 'about_state.dart';
part 'about_bloc.freezed.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc(this._hotelsApiService) : super(const AboutState.initial()) {
    on<AboutEvent>((event, emit) async {
      await event.map(
        load: (event) async => await _loadHotels(event, emit),
      );
    });
  }
  final HotelsApiService _hotelsApiService;


  _loadHotels(_LoadHotels event, Emitter<AboutState> emit) async {
    emit(const AboutState.loading());
    try {
      HotelInfo hotel = await _hotelsApiService.getHotelInfo(event.id);
      if(hotel != null){
        emit(AboutState.loaded(hotel: hotel));
      } else {
        emit(const AboutState.failure());
      }
    } catch (e,s){
      print(e);
      print(s);
      emit(const AboutState.failure());
    }
  }
}
