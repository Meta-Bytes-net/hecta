import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart'; // from the generated file

@singleton
@AutoRouterConfig(replaceInRouteName: Routers.replaceInRouteName)
final class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: Routers.navigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      path: Routers.login,
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      duration: Duration(milliseconds: 700),
    ),

    AutoRoute(initial: true, path: Routers.splash, page: SplashRoute.page),
  ];
}

final class Routers {
  Routers._();

  static const String login = '/login';

  static const String splash = '/splash';

  static final navigatorKey = GlobalKey<NavigatorState>();
  static const String replaceInRouteName = 'Page|Screen,Route';
}
