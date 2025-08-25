import java.util.Properties
import java.io.FileInputStream
import java.io.FileOutputStream

plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}
val versionPropsFile =
    rootProject.file("version.properties")
val versionProps = Properties()

if (versionPropsFile.exists()) {
    versionProps.load(FileInputStream(versionPropsFile))
}

val currentVersionCode =
    versionProps["VERSION_CODE"].toString().toInt()
val currentVersionName =
    versionProps["VERSION_NAME"].toString()

val newVersionCode = currentVersionCode + 1

// زيادة patch تلقائيا
val parts = currentVersionName.split(".")
val major = parts[0].toInt()
val minor = parts[1].toInt()
val patch = parts[2].toInt() + 1
val newVersionName = "$major.$minor.$patch"

// تحديث ملف الخصائص
versionProps["VERSION_CODE"] =
    newVersionCode.toString()
versionProps["VERSION_NAME"] = newVersionName
versionProps.store(FileOutputStream(versionPropsFile), null)

android {
    namespace = "com.example.hecta"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }
     buildFeatures {
        buildConfig = true
    }
  flavorDimensions += "environment"

productFlavors {
    create("development") {
        dimension = "environment"
        applicationIdSuffix = ".dev" // 📱 com.example.myapp.dev
        versionNameSuffix = "-dev"   // 📊 1.0.0-dev
        resValue("string", "app_name", "Hecta Dev") // 📱 App name
    }

    create("production") {
        dimension = "environment"
        resValue("string", "app_name", "Hecta") // 📱 Clean app name
    }
}

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.hecta"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = newVersionCode
        versionName = newVersionName
    }

    buildTypes {

        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
