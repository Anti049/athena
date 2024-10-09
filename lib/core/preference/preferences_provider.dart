import 'package:athena/core/preference/preferences.dart';
import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preferences_provider.g.dart';

@riverpod
class Preferences extends _$Preferences {
  @override
  PreferencesContainer build() {
    Box preferencesBox = Hive.box('preferences');
    if (preferencesBox.isEmpty) {
      return PreferencesContainer.initial();
    } else {
      return PreferencesContainer.fromBox(preferencesBox);
    }
  }

  void notifyListeners() {
    state = PreferencesContainer.fromBox(Hive.box('preferences'));
  }

  // Locale
  void updateLocale(Locale locale) {
    Hive.box('preferences')
        .put(PreferencesContainer.localeKey, locale.toString());
    notifyListeners();
  }

  // Theme
  // - Theme Mode
  void updateThemeMode(ThemeMode themeMode) {
    Hive.box('preferences')
        .put(PreferencesContainer.themeModeKey, themeMode.index);
    notifyListeners();
  }

  // - Theme Name
  void updateThemeName(String themeName) {
    Hive.box('preferences')
        .put(PreferencesContainer.themeNameKey, themeName.toLowerCase());
    notifyListeners();
  }

  // - Pure Black
  void updatePureBlack(bool pureBlack) {
    Hive.box('preferences').put(PreferencesContainer.pureBlackKey, pureBlack);
    notifyListeners();
  }

  // - Contrast Level
  void updateContrastLevel(ContrastLevel contrastLevel) {
    Hive.box('preferences')
        .put(PreferencesContainer.contrastLevelKey, contrastLevel.index);
    notifyListeners();
  }

  // - Downloaded Only
  void updateDownloadedOnly(bool downloadedOnly) {
    Hive.box('preferences')
        .put(PreferencesContainer.downloadedOnlyKey, downloadedOnly);
    notifyListeners();
  }

  // - Incognito Mode
  void updateIncognitoMode(bool incognitoMode) {
    Hive.box('preferences')
        .put(PreferencesContainer.incognitoModeKey, incognitoMode);
    notifyListeners();
  }

  // - Showing header bar
  bool showingHeaderBar() {
    // Return true if downloadedOnly OR incognitoMode is true
    return state.downloadedOnly || state.incognitoMode;
  }
}
