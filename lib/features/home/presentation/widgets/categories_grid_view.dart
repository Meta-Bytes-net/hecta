import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/routing/app_router.gr.dart';
import 'package:hecta/features/home/presentation/widgets/category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

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
          onTap: () {
            context.router.push(
              CategoryDetailsRoute(
                categoryName: ServiceModel.servicesList[index].label,
                // categoryImage: ServiceModel.servicesList[index].imagePath,
              ),
            );
          },
        ),
      ),
    );
  }
}
