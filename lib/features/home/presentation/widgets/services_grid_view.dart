import 'package:flutter/material.dart';
import 'package:hecta/features/home/presentation/widgets/service_item.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 7,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: .7,
        ),
        itemBuilder: (context, index) => ServiceItem(
          imagePath: ServiceModel.servicesList[index].imagePath,
          label: ServiceModel.servicesList[index].label,
        ),
      ),
    );
  }
}
