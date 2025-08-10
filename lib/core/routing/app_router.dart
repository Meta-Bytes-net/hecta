import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart'; // from the generated file

@AutoRouterConfig(replaceInRouteName: Routers.replaceInRouteName)
final class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: Routers.navigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(initial: true, path: Routers.login, page: LoginRoute.page),
    // AutoRoute(
    //   path: FoodModule.restaurantList,
    //   page: FoodRestaurantListRoute.page,
    // ),
    // AutoRoute(
    //   path: FoodModule.orderTracking,
    //   page: FoodOrderTrackingRoute.page,
    // ),
  ];
}

final class Routers {
  Routers._();

  static const String login = '/login';

  static final navigatorKey = GlobalKey<NavigatorState>();
  static const String replaceInRouteName = 'Page|Screen,Route';
}
