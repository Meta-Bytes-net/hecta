import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/home/presentation/widgets/categories_grid_view.dart';
import 'package:hecta/features/home/presentation/widgets/home_carousel.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p20.sp,
        vertical: AppPadding.p20.sp,
      ),
      child: Column(
        spacing: AppSize.s40.sp,
        children: [HomeCarousel(), CategoriesGridView()],
      ),
    );
  }
}
