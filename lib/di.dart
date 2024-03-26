import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotels_t/api/api.dart';
import 'package:hotels_t/features/about/bloc/about_bloc.dart';
import 'package:hotels_t/features/home/bloc/home_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<HotelsApiService>(HotelsApiService(sl()));
  sl.registerFactory<HomeBloc>(() => HomeBloc(sl(),));
  sl.registerFactory<AboutBloc>(() => AboutBloc(sl(),));
}