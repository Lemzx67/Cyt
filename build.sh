#!/usr/bin/env bash
# Genera el andamiaje Android con 'flutter create', superpone nuestro codigo y compila el APK.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf app
flutter create --org app.cyt --project-name cyt_mobile --platforms=android app
cp pubspec.yaml app/pubspec.yaml
rm -rf app/lib app/test && cp -r lib app/lib
cp overlay/AndroidManifest.xml app/android/app/src/main/AndroidManifest.xml
K=app/android/app/src/main/kotlin/app/cyt/cyt_mobile
mkdir -p "$K" && cp overlay/MainActivity.kt "$K/MainActivity.kt"
cd app && flutter pub get && flutter build apk --release
echo "APK: $(pwd)/build/app/outputs/flutter-apk/app-release.apk"
