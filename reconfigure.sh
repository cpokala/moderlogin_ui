rm -rf ~/.pub-cache/
flutter pub cache repair 
find . -type f -name '*.g.dart' -print -delete && find . -type f -name '*.freezed.dart' -print -delete && find . -type f -name
flutter clean
rm pubspec.lock
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs 