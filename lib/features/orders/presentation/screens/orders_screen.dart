import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hecta/core/di/injection.dart';
import 'package:hecta/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:hecta/features/orders/presentation/widgets/orders_screen_content.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrdersCubit>(),
      child: OrdersScreenContent(),
    );
  }
}
