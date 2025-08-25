// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:hecta/features/auth/presentation/pages/login_screen.dart'
    as _i4;
import 'package:hecta/features/category_details/presentation/pages/category_details_screen.dart'
    as _i1;
import 'package:hecta/features/contact_us/presentation/screens/contact_us_screen.dart'
    as _i2;
import 'package:hecta/features/edit_profile/presentation/screens/edit_profile_screen.dart'
    as _i3;
import 'package:hecta/features/main_layout.dart' as _i5;
import 'package:hecta/features/packages/presentation/pages/packages_screen.dart'
    as _i6;
import 'package:hecta/features/splash/presentation/screens/splash_screen.dart' as _i7;

/// generated route for
/// [_i1.CategoryDetailsScreen]
class CategoryDetailsRoute extends _i8.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i9.Key? key,
    required String categoryName,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         CategoryDetailsRoute.name,
         args: CategoryDetailsRouteArgs(key: key, categoryName: categoryName),
         rawPathParams: {'categoryName': categoryName},
         initialChildren: children,
       );

  static const String name = 'CategoryDetailsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CategoryDetailsRouteArgs>(
        orElse: () => CategoryDetailsRouteArgs(
          categoryName: pathParams.getString('categoryName'),
        ),
      );
      return _i8.WrappedRoute(
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

  final _i9.Key? key;

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
/// [_i2.ContactUsScreen]
class ContactUsRoute extends _i8.PageRouteInfo<void> {
  const ContactUsRoute({List<_i8.PageRouteInfo>? children})
    : super(ContactUsRoute.name, initialChildren: children);

  static const String name = 'ContactUsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ContactUsScreen();
    },
  );
}

/// generated route for
/// [_i3.EditProfileScreen]
class EditProfileRoute extends _i8.PageRouteInfo<void> {
  const EditProfileRoute({List<_i8.PageRouteInfo>? children})
    : super(EditProfileRoute.name, initialChildren: children);

  static const String name = 'EditProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.EditProfileScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i9.Key? key, List<_i8.PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i8.WrappedRoute(child: _i4.LoginScreen(key: args.key));
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i9.Key? key;

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
/// [_i5.MainLayout]
class MainLayout extends _i8.PageRouteInfo<void> {
  const MainLayout({List<_i8.PageRouteInfo>? children})
    : super(MainLayout.name, initialChildren: children);

  static const String name = 'MainLayout';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.MainLayout();
    },
  );
}

/// generated route for
/// [_i6.PackagesScreen]
class PackagesRoute extends _i8.PageRouteInfo<void> {
  const PackagesRoute({List<_i8.PageRouteInfo>? children})
    : super(PackagesRoute.name, initialChildren: children);

  static const String name = 'PackagesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.PackagesScreen();
    },
  );
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashScreen();
    },
  );
}
