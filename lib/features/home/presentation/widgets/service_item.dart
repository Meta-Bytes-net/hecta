import 'package:flutter/material.dart';
import 'package:hecta/core/helpers/app_assets.dart';

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
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
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
      ServiceModel(label: "التكييف المركزي", imagePath: Assets.imagesServices),
      ServiceModel(label: "التزيين", imagePath: Assets.imagesDecoration),
      ServiceModel(label: "الأمن", imagePath: Assets.imagesSecurity),
      ServiceModel(label: "خزان المياه", imagePath: Assets.imagesWaterTank),
      ServiceModel(label: "المصعد", imagePath: Assets.imagesElevator),
      ServiceModel(
        label: "الدش المركزي",
        imagePath: Assets.imagesCentralSatellite,
      ),
      ServiceModel(
        label: "نظافة عامة",
        imagePath: Assets.imagesGeneralCleaning,
      ),
    ];
  }
}
