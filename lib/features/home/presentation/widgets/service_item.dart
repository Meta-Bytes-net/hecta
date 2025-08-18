import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hecta/core/helpers/app_assets.dart';
import 'package:hecta/core/helpers/app_strings.dart';
import 'package:hecta/core/helpers/extensions/extensions.dart';

class ServiceItem extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final String imagePath;

  const ServiceItem({
    super.key,
    required this.imagePath,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              height: context.screenHeight * 0.075,
              width: context.screenHeight * 0.075,
              fit: BoxFit.cover,
            ),
          ),
          15.verticalSpace,
          Text(
            label.tr(),
            style: context.textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ServiceModel {
  final String label;
  final String imagePath;

  const ServiceModel({required this.label, required this.imagePath});
  static List<ServiceModel> get servicesList {
    return [
      ServiceModel(
        imagePath: Assets.imagesServices,
        label: AppStrings.centralAc,
      ),
      ServiceModel(
        imagePath: Assets.imagesDecoration,
        label: AppStrings.decoration,
      ),
      ServiceModel(
        imagePath: Assets.imagesSecurity,
        label: AppStrings.security,
      ),
      ServiceModel(
        imagePath: Assets.imagesWaterTank,
        label: AppStrings.waterTank,
      ),
      ServiceModel(
        imagePath: Assets.imagesElevator,
        label: AppStrings.elevator,
      ),
      ServiceModel(
        imagePath: Assets.imagesCentralSatellite,
        label: AppStrings.centralSatellite,
      ),
      ServiceModel(
        imagePath: Assets.imagesGeneralCleaning,
        label: AppStrings.generalCleaning,
      ),
    ];
  }
}
