// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:hecta/features/auth/presentation/widgets/login_wrapper.dart'
    as _i1;

/// generated route for
/// [_i1.LoginWrapper]
class LoginWrapper extends _i2.PageRouteInfo<LoginWrapperArgs> {
  LoginWrapper({_i3.Key? key, List<_i2.PageRouteInfo>? children})
    : super(
        LoginWrapper.name,
        args: LoginWrapperArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginWrapper';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginWrapperArgs>(
        orElse: () => const LoginWrapperArgs(),
      );
      return _i2.WrappedRoute(child: _i1.LoginWrapper(key: args.key));
    },
  );
}

class LoginWrapperArgs {
  const LoginWrapperArgs({this.key});

  final _i3.Key? key;

  @override
  String toString() {
    return 'LoginWrapperArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginWrapperArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}
