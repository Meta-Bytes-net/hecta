import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:hecta/features/profile/presentation/widgets/edit_profile_screen_content.dart';
@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>(),
      child: const EditProfileScreenContent(),
    );
  }
}
