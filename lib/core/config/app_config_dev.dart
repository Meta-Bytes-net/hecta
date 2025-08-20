// config/environments/development_config.dart
// 🔴 Development Configuration - For daily coding
import 'package:hecta/core/config/app_config.dart';

class DevelopmentConfig extends AppConfig {
  @override
  String get appName => "MyApp (Dev)";

  @override
  String get baseApiUrl => "https://api-dev.myapp.com";

  @override
  String get environment => "development";

  @override
  bool get isDebugMode => true; // 🐛 Debug logs enabled

  @override
  String get appSuffix => ".dev"; // 📱 Different bundle ID

  // 📊 Development Analytics (won't pollute prod data)
  @override
  String get analyticsKey => "dev-analytics-key";

  @override
  String get crashlyticsKey => "dev-crashlytics-key";

  // 🚀 All features enabled for testing
  @override
  bool get enableBetaFeatures => true;

  @override
  bool get showDebugInfo => true; // 📋 Show debug overlays
}
