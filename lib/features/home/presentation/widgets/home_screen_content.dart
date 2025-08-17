import 'package:flutter/material.dart';
import 'package:hecta/features/home/presentation/widgets/home_carousel.dart';
import 'package:hecta/features/home/presentation/widgets/services_grid_view.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        spacing: 30,
        children: [HomeCarousel(), ServicesGridView()],
      ),
    );
  }
}
