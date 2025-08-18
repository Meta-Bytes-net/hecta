import 'package:carousel_slider/carousel_slider.dart';
import 'package:escape_parent_padding/escapable_padding.dart';
import 'package:flutter/material.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';
import 'package:hecta/features/home/presentation/widgets/carousel_item.dart';
import 'package:hecta/features/home/presentation/widgets/indicator_widget.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

ValueNotifier activeIndex = ValueNotifier(0);

class _HomeCarouselState extends State<HomeCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        EscapablePadding.lite(
          height: context.screenHeight * 0.2,
          child: CarouselSlider(
            options: CarouselOptions(
              height: context.screenHeight * 0.2,
              aspectRatio: 16 / 9,
              viewportFraction: .8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: .3,
              onPageChanged: (index, reason) {
                activeIndex.value = index;
              },
              scrollDirection: Axis.horizontal,
            ),
            items: [1, 2, 3, 4, 5, 6].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CarouselItem();
                },
              );
            }).toList(),
          ),
        ),
        IndicatorWidget(),
      ],
    );
  }
}
