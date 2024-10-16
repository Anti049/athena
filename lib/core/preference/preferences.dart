import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'preferences.freezed.dart';

@freezed
class PreferencesContainer with _$PreferencesContainer {
  const factory PreferencesContainer({
    // Locale
    required Locale locale,
    // Theme
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default('default') String themeName,
    @Default(false) bool pureBlack,
    @Default(ContrastLevel.normal) ContrastLevel contrastLevel,
    @Default(false) bool downloadedOnly,
    @Default(false) bool incognitoMode,
  }) = _PreferencesContainer;

  // Keys
  static const String localeKey = 'locale';
  static const String themeModeKey = 'themeMode';
  static const String themeNameKey = 'themeName';
  static const String pureBlackKey = 'pureBlack';
  static const String contrastLevelKey = 'contrastLevel';
  static const String downloadedOnlyKey = 'downloadedOnly';
  static const String incognitoModeKey = 'incognitoMode';

  factory PreferencesContainer.initial() => const PreferencesContainer(
        locale: Locale('en'),
        themeMode: ThemeMode.system,
        themeName: 'default',
        pureBlack: false,
        contrastLevel: ContrastLevel.normal,
        downloadedOnly: false,
        incognitoMode: false,
      );

  factory PreferencesContainer.fromBox(Box box) {
    final locale = box.get(localeKey, defaultValue: 'en');
    return PreferencesContainer(
      locale: Locale(locale),
      themeMode: ThemeMode.values[box.get(
        themeModeKey,
        defaultValue: ThemeMode.system.index,
      )],
      themeName: box.get(themeNameKey, defaultValue: 'default'),
      pureBlack: box.get(pureBlackKey, defaultValue: false),
      contrastLevel: ContrastLevel.values[box.get(
        contrastLevelKey,
        defaultValue: ContrastLevel.normal.index,
      )],
      downloadedOnly: box.get(downloadedOnlyKey, defaultValue: false),
      incognitoMode: box.get(incognitoModeKey, defaultValue: false),
    );
  }
}
