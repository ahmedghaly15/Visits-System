import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystoreProperties = Properties()
val keystorePropertiesFile = project.rootDir.resolve("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.example.visits_system"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "29.0.13599879"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.visits_system"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            storeFile = rootProject.file("upload-keystore.jks")
            storePassword = keystoreProperties.getProperty("storePassword") ?: error("storePassword missing in key.properties")
            keyAlias = keystoreProperties.getProperty("keyAlias") ?: error("keyAlias missing in key.properties")
            keyPassword = keystoreProperties.getProperty("keyPassword") ?: error("keyPassword missing in key.properties")
        }
    }

    buildTypes {
       getByName("release") {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true // Enable code shrinking
            isShrinkResources = true // Enable resource shrinking
        }
    }
}

flutter {
    source = "../.."
}
