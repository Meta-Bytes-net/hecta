import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/features/customer_services/presentation/cubit/customer_services_cubit.dart';
import 'package:hecta/features/customer_services/presentation/widgets/customer_services_screen_content.dart';
  
class CustomerServicesScreen extends StatelessWidget {
  const CustomerServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomerServicesCubit>(),
      child: const CustomerServicesScreenContent(),
    );
  }
}
