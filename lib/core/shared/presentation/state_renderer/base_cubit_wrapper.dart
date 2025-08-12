import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubitWrapper<C extends Cubit> extends StatelessWidget
    implements AutoRouteWrapper {
  final C Function(BuildContext context) createCubit;
  final Widget child;
  const BaseCubitWrapper({
    super.key,
    required this.createCubit,
    required this.child,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<C>(create: createCubit, child: child);
  }

  @override
  Widget build(BuildContext context) {
    // This widget usually won't render directly, wrappedRoute builds it
    return child;
  }
}
