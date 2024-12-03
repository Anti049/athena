import 'package:athena/features/more/settings/models/preference.dart';
import 'package:athena/features/more/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appearance_provider.g.dart';

class AppearancePreferences {
  AppearancePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<ThemeMode> themeMode() => preferenceStore.getEnum(
        "themeMode",
        ThemeMode.system,
        ThemeMode.values,
      );

  Preference<String> themeName() => preferenceStore.getString(
        "themeName",
        defaultValue: 'system',
      );

  Preference<bool> pureBlack() => preferenceStore.getBool(
        "pureBlack",
        defaultValue: false,
      );

  Preference<double> blendLevel() => preferenceStore.getDouble(
        "blendLevel",
        defaultValue: 6.0,
      );

  Preference<Locale> appLanguage() => preferenceStore.getObject(
        "appLanguage",
        const Locale('en'),
        (locale) => locale.toString(),
        (code) => Locale(code),
      );

  Preference<DateFormat> dateFormat() => preferenceStore.getEnum(
        "dateFormat",
        DateFormat.base,
        DateFormat.values,
      );

  Preference<bool> relativeTimestamps() => preferenceStore.getBool(
        "relativeTimestamps",
        defaultValue: true,
      );
}

@riverpod
AppearancePreferences appearancePreferences(AppearancePreferencesRef ref) =>
    AppearancePreferences(ref.watch(preferencesProvider));
