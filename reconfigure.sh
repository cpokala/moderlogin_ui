#!/bin/bash

echo "Cleaning pub cache..."
rm -rf ~/.pub-cache/

echo "Repairing pub cache..."
flutter pub cache repair

echo "Deleting generated files..."
find . -type f -name '*.g.dart' -print -delete
find . -type f -name '*.freezed.dart' -print -delete

echo "Running flutter clean..."
flutter clean

echo "Removing pubspec.lock..."
rm pubspec.lock

echo "Getting pub packages..."
flutter pub get

echo "Running build_runner..."
flutter packages pub run build_runner build --delete-conflicting-outputs
