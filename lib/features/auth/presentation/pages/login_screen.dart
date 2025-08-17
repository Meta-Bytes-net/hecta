import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/core/shared/presentation/state_renderer/base_cubit_wrapper.dart';
import 'package:hecta/features/auth/presentation/cubit/login_cubit.dart';
import 'package:hecta/features/auth/presentation/widgets/login_screen_content.dart';

@RoutePage()
class LoginScreen extends BaseCubitWrapper<LoginCubit> {
  LoginScreen({super.key})
    : super(
        createCubit: (ctx) => getIt<LoginCubit>(),
        child: Scaffold(body: const LoginScreenContent()),
      );
}
