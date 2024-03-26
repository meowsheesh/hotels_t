import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../api/models/hotels.dart';
import '../features/about/view/about_screen.dart';
import '../features/home/view/home_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: AboutRoute.page,
      path: '/about/:id',
    ),
  ];
}