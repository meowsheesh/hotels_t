import 'package:flutter/material.dart';
import 'package:hotels_t/features/home/bloc/home_bloc.dart';
import 'di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/about/bloc/about_bloc.dart';
import 'ui/theme/theme.dart';
import 'router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => sl<HomeBloc>()..add(const HomeEvent.search()),
        ),
        BlocProvider<AboutBloc>(
          create: (context) => sl<AboutBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Hotels test',
        theme: themeData,
        debugShowCheckedModeBanner: false,
        routerConfig: _router.config(),
      ),
    );
  }
}

