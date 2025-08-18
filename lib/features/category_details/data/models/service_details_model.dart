import 'package:hecta/core/helpers/app_strings.dart';

class ServiceDetailsModel {
  final String nameKey;
  final String iconPath;

  const ServiceDetailsModel({required this.nameKey, required this.iconPath});

  static Map<String, List<ServiceDetailsModel>> getCategoryServices() {
    return {
      // Central AC services - 6 services
      AppStrings.centralAc: [
        ServiceDetailsModel(
          nameKey:
              'central_ac_installation', // Using string constant directly for consistency
          iconPath: 'assets/images/services/ac_installation.png',
        ),
        ServiceDetailsModel(
          nameKey: 'central_ac_maintenance',
          iconPath: 'assets/images/services/ac_maintenance.png',
        ),
        ServiceDetailsModel(
          nameKey: 'central_ac_repair',
          iconPath: 'assets/images/services/ac_repair.png',
        ),
        ServiceDetailsModel(
          nameKey: 'central_ac_cleaning',
          iconPath: 'assets/images/services/ac_cleaning.png',
        ),
        ServiceDetailsModel(
          nameKey: 'central_ac_inspection',
          iconPath: 'assets/images/services/ac_inspection.png',
        ),
        ServiceDetailsModel(
          nameKey: 'central_ac_replacement',
          iconPath: 'assets/images/services/ac_replacement.png',
        ),
      ],

      // Decoration services - 7 services
      AppStrings.decoration: [
        ServiceDetailsModel(
          nameKey: AppStrings.propertyTreePlanting,
          iconPath: 'assets/images/services/interior_design.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.streetDecoration,
          iconPath: 'assets/images/services/painting.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.roofDecoration,
          iconPath: 'assets/images/services/furniture.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.paintingAndRenovation,
          iconPath: 'assets/images/services/wallpaper.png',
        ),

        ServiceDetailsModel(
          nameKey: AppStrings.lighting,
          iconPath: 'assets/images/services/lighting.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.customDecoration,
          iconPath: 'assets/images/services/ceiling.png',
        ),
      ],

      // Security services - 6 services
      AppStrings.security: [
        ServiceDetailsModel(
          nameKey: AppStrings.securityGuardProvision,
          iconPath: 'assets/images/services/cctv.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.securitySystemModification,
          iconPath: 'assets/images/services/alarm.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.cctvInstallation,
          iconPath: 'assets/images/services/access_control.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.cctvMaintenance,
          iconPath: 'assets/images/services/security_guards.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.magneticCardSystem,
          iconPath: 'assets/images/services/fire_alarm.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.alarmDeviceInstallation,
          iconPath: 'assets/images/services/intercom.png',
        ),
      ],

      // Water Tank services - 6 services
      AppStrings.waterTank: [
        ServiceDetailsModel(
          nameKey: AppStrings.regularCleaning,
          iconPath: 'assets/images/services/tank_cleaning.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.tankInstallation,
          iconPath: 'assets/images/services/tank_installation.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.tankRepair,
          iconPath: 'assets/images/services/leak_repair.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.inspectionAndQuotation,
          iconPath: 'assets/images/services/water_testing.png',
        ),
      ],

      // Elevator services - 6 services
      AppStrings.elevator: [
        ServiceDetailsModel(
          nameKey: AppStrings.elevatorInstallation,
          iconPath: 'assets/images/services/elevator_installation.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.elevatorRenewal,
          iconPath: 'assets/images/services/elevator_modernization.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.elevatorRepair,
          iconPath: 'assets/images/services/elevator_repair.png',
        ),

        ServiceDetailsModel(
          nameKey: AppStrings.inspectionAndQuotation,
          iconPath: 'assets/images/services/elevator_inspection.png',
        ),
      ],

      // Central Satellite services - 6 services
      AppStrings.centralSatellite: [
        ServiceDetailsModel(
          nameKey: AppStrings.satelliteInstallation,
          iconPath: 'assets/images/services/satellite_installation.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.satelliteMaintenance,
          iconPath: 'assets/images/services/satellite_maintenance.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.satelliteUpdate,
          iconPath: 'assets/images/services/channel_setup.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.inspectionAndQuotation,
          iconPath: 'assets/images/services/dish_alignment.png',
        ),
      ],

      // General Cleaning services - 7 services
      AppStrings.generalCleaning: [
        ServiceDetailsModel(
          nameKey: AppStrings.stairCleaning,
          iconPath: 'assets/images/services/upholstery_cleaning.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.roofCleaning,
          iconPath: 'assets/images/services/air_duct_cleaning.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.receptionCleaning,
          iconPath: 'assets/images/services/sanitization.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.outsidePropertyCleaning,
          iconPath: 'assets/images/services/post_construction_cleaning.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.garbageRemoval,
          iconPath: 'assets/images/services/garbage_removal.png',
        ),
        ServiceDetailsModel(
          nameKey: AppStrings.deepCleaning,
          iconPath: 'assets/images/services/deep_cleaning.png',
        ),
      ],
    };
  }
}
