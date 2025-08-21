// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:hecta/features/auth/presentation/pages/login_screen.dart'
    as _i3;
import 'package:hecta/features/category_details/presentation/pages/category_details_screen.dart'
    as _i1;
import 'package:hecta/features/main_layout.dart' as _i4;
import 'package:hecta/features/profile/presentation/screens/edit_profile_screen.dart'
    as _i2;
import 'package:hecta/features/splash/splash_screen.dart' as _i5;

/// generated route for
/// [_i1.CategoryDetailsScreen]
class CategoryDetailsRoute extends _i6.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i7.Key? key,
    required String categoryName,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         CategoryDetailsRoute.name,
         args: CategoryDetailsRouteArgs(key: key, categoryName: categoryName),
         rawPathParams: {'categoryName': categoryName},
         initialChildren: children,
       );

  static const String name = 'CategoryDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CategoryDetailsRouteArgs>(
        orElse: () => CategoryDetailsRouteArgs(
          categoryName: pathParams.getString('categoryName'),
        ),
      );
      return _i6.WrappedRoute(
        child: _i1.CategoryDetailsScreen(
          key: args.key,
          categoryName: args.categoryName,
        ),
      );
    },
  );
}

class CategoryDetailsRouteArgs {
  const CategoryDetailsRouteArgs({this.key, required this.categoryName});

  final _i7.Key? key;

  final String categoryName;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, categoryName: $categoryName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoryDetailsRouteArgs) return false;
    return key == other.key && categoryName == other.categoryName;
  }

  @override
  int get hashCode => key.hashCode ^ categoryName.hashCode;
}

/// generated route for
/// [_i2.EditProfileScreen]
class EditProfileRoute extends _i6.PageRouteInfo<void> {
  const EditProfileRoute({List<_i6.PageRouteInfo>? children})
    : super(EditProfileRoute.name, initialChildren: children);

  static const String name = 'EditProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.EditProfileScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i7.Key? key, List<_i6.PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i6.WrappedRoute(child: _i3.LoginScreen(key: args.key));
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.MainLayout]
class MainLayout extends _i6.PageRouteInfo<void> {
  const MainLayout({List<_i6.PageRouteInfo>? children})
    : super(MainLayout.name, initialChildren: children);

  static const String name = 'MainLayout';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainLayout();
    },
  );
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashScreen();
    },
  );
}
