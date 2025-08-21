import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/shared/presentation/widgets/app_text_button.dart';
import 'package:hecta/core/theming/app_colors.dart';
import 'package:hecta/core/theming/app_sizes.dart';
import 'package:hecta/features/packages/domain/entities/subscription_package.dart';

class PackageCard extends StatelessWidget {
  final SubscriptionPackage item;
  final VoidCallback onToggleSubscription;
  final VoidCallback onRequestReport;
  final VoidCallback onRequestPreview;
  final bool isSelected;
  const PackageCard({
    super.key,
    required this.item,
    required this.onToggleSubscription,
    required this.onRequestReport,
    required this.onRequestPreview,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color borderColor = isSelected
        ? AppColors.mainBlue
        : AppColors.lightGray;
    final Color subscribeColor = item.isSubscribed
        ? AppColors.redColor
        : AppColors.greenColor;

    final String priceText = AppStrings.priceFormat.tr(
      namedArgs: {
        'price': item.price.toStringAsFixed(0),
        'currency': AppStrings.currencyAed.tr(),
      },
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: AppMargin.m8.h),
      padding: EdgeInsets.all(AppPadding.p8.w),

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGray,
            blurRadius: 4.r,
            offset: Offset(0, 1.h),
          ),
        ],
        color: Colors.white,

        borderRadius: BorderRadius.circular(AppSize.s12.r),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTierIcon(item.tier),
          SizedBox(width: AppSize.s12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.nameKey.tr(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 5.h),
                Text(
                  priceText,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: AppColors.mainBlue),
                ),
                SizedBox(height: 5.h),
                Row(
                  spacing: 4.w,
                  children: [
                    Expanded(
                      child: AppTextButton(
                        buttonHeight: 20.h,
                        verticalPadding: 0,
                        horizontalPadding: 0,
                        borderRadius: 24,
                        textStyle: Theme.of(context).textTheme.labelSmall
                            ?.copyWith(color: Colors.white, fontSize: 10.sp),
                        backgroundColor: AppColors.mainBlue,
                        buttonText: AppStrings.actionRequestReport.tr(),
                        onPressed: onRequestReport,
                      ),
                    ),
                    Expanded(
                      child: AppTextButton(
                        buttonHeight: 30.h,

                        verticalPadding: 0,
                        horizontalPadding: 0,
                        borderRadius: 24,
                        textStyle: Theme.of(context).textTheme.labelSmall
                            ?.copyWith(color: Colors.white, fontSize: 10.sp),
                        backgroundColor: AppColors.mainBlue,
                        buttonText: AppStrings.actionRequestPreview.tr(),
                        onPressed: onRequestPreview,
                      ),
                    ),
                    Expanded(
                      child: AppTextButton(
                        buttonHeight: 30.h,

                        verticalPadding: 0,
                        horizontalPadding: 0,
                        borderRadius: 24,
                        textStyle: Theme.of(context).textTheme.labelSmall
                            ?.copyWith(color: Colors.white, fontSize: 10.sp),
                        backgroundColor: subscribeColor,
                        buttonText: item.isSubscribed
                            ? AppStrings.actionCancel.tr()
                            : AppStrings.actionSubscribe.tr(),
                        onPressed: onToggleSubscription,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTierIcon(PackageTier tier) {
    switch (tier) {
      case PackageTier.king:
        return Icon(
          Icons.workspace_premium_rounded,
          size: 36.sp,
          color: Colors.black87,
        );
      case PackageTier.gold:
        return Icon(
          Icons.auto_awesome_rounded,
          size: 36.sp,
          color: Colors.amber.shade700,
        );
      case PackageTier.tower:
        return Icon(
          Icons.apartment_rounded,
          size: 36.sp,
          color: Colors.blueGrey,
        );
      case PackageTier.silver:
        return Icon(
          Icons.change_circle_rounded,
          size: 36.sp,
          color: Colors.teal,
        );
    }
  }
}
