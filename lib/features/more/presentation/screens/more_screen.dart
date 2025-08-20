import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/features/more/presentation/cubit/more_cubit_cubit.dart';
import 'package:hecta/features/more/presentation/widgets/more_screen_content.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MoreCubitCubit>(),
      child: const MoreScreenContent(),
    );
  }
}
