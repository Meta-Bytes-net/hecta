import 'package:flutter/material.dart';
import 'package:hecta/features/home/presentation/widgets/home_carousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: yourActiveIndex,
      builder: (BuildContext context, value, Widget? child) {
        return SizedBox(
          height: 20,
          child: AnimatedSmoothIndicator(
            activeIndex: yourActiveIndex.value,
            count: 6, // Adjust based on the number of items
            effect: WormEffect(
              dotHeight: 10,
              dotWidth: 18,
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
