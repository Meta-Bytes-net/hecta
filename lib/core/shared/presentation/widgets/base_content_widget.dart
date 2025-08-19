import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/theming/app_sizes.dart';

class BaseContentWidget extends StatelessWidget {
  final Widget? child;

  final double? bottomPadding;
  // padding;
  const BaseContentWidget({super.key, this.child, this.bottomPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppPadding.p12.w,
        right: AppPadding.p12.w,
        top: AppPadding.p12.h,
        bottom: bottomPadding?.h ?? 0,
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
