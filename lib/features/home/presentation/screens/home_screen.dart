import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/core/shared/presentation/state_renderer/base_cubit_wrapper.dart';
import 'package:hecta/features/home/presentation/widgets/home_screen_content.dart';

@RoutePage()
class HomeScreen extends BaseCubitWrapper<HomeCubit> {
  HomeScreen({super.key})
    : super(
        createCubit: (ctx) => getIt<HomeCubit>(),
        child: Scaffold(
          appBar: CustomAppBar(title: 'Home'),
          body: HomeScreenContent(),
        ),
      );
}
