// config/environments/production_config.dart
// 🟢 Production Configuration - For real users
import 'package:hecta/core/config/app_config.dart';

class ProductionConfig extends AppConfig {
  @override
  String get appName => "MyApp";

  @override
  String get baseApiUrl => "https://api.myapp.com";

  @override
  String get environment => "production";

  @override
  bool get isDebugMode => false; // 🔒 No debug info

  @override
  String get appSuffix => ""; // 📱 Clean bundle ID

  // 📊 Production Analytics
  @override
  String get analyticsKey =>
      const String.fromEnvironment('PROD_ANALYTICS_KEY', defaultValue: '');

  @override
  String get crashlyticsKey =>
      const String.fromEnvironment('PROD_CRASHLYTICS_KEY', defaultValue: '');

  // 🚀 Feature flags controlled remotely
  @override
  bool get enableBetaFeatures => false;

  @override
  bool get showDebugInfo => false; // 🔒 Never show debug info
}
