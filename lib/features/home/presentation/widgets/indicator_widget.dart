import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/features/home/presentation/widgets/home_carousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: activeIndex,
      builder: (BuildContext context, value, Widget? child) {
        return SizedBox(
          height: 20.h,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex.value,
            count: 6, // Adjust based on the number of items
            effect: WormEffect(
              dotHeight: 10.h,
              dotWidth: 18.w,
              // spacing: 6,
              activeDotColor: Colors.blue,
              dotColor: Colors.grey,
            ),
          ),
        );
      },
    );
  }
}
