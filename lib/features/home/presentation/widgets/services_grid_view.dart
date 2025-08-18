import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/features/home/presentation/widgets/service_item.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
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
