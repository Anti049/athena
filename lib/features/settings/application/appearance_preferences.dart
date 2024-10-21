import 'package:athena/features/settings/application/common_preference_store.dart';
import 'package:athena/features/settings/application/preference.dart';
import 'package:athena/features/settings/application/preference_store.dart';
import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../appearance/application/appearance_preferences.g.dart';

class AppearancePreferences {
  AppearancePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<ThemeMode> themeMode() => preferenceStore.getEnum(
        Preference.appStateKey("themeMode"),
        ThemeMode.system,
        ThemeMode.values,
      );

  Preference<String> themeName() => preferenceStore.getString(
        Preference.appStateKey("themeName"),
        'default',
      );

  Preference<bool> pureBlack() => preferenceStore.getBool(
        Preference.appStateKey("pureBlack"),
        false,
      );

  Preference<ContrastLevel> contrastLevel() => preferenceStore.getEnum(
        Preference.appStateKey("contrastLevel"),
        ContrastLevel.normal,
        ContrastLevel.values,
      );
}

@riverpod
AppearancePreferences appearancePreferences(AppearancePreferencesRef ref) =>
    AppearancePreferences(ref.watch(preferencesProvider));
