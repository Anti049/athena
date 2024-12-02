import 'package:athena/features/settings/providers/common_preference_store.dart';
import 'package:athena/features/settings/providers/preference.dart';
import 'package:athena/features/settings/providers/preference_store.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appearance_preferences.g.dart';

enum DateFormats {
  base('MM/dd/yy'),
  ddMMyy('dd/MM/yy'),
  yyyyMMdd('yyyy-MM-dd'),
  ddMMMyyyy('dd/MMM/yyyy'),
  // ignore: constant_identifier_names
  MMMddyyyy('MMM dd, yyyy');

  const DateFormats(this.format);

  final String format;
}

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
        'system',
      );

  Preference<bool> pureBlack() => preferenceStore.getBool(
        Preference.appStateKey("pureBlack"),
        false,
      );

  Preference<double> contrastLevel() => preferenceStore.getDouble(
        Preference.appStateKey("contrastLevel"),
        0.0,
      );

  Preference<Locale> appLanguage() => preferenceStore.getObject(
        Preference.appStateKey("appLanguage"),
        const Locale('en'),
        (locale) => locale.languageCode,
        (code) => Locale(code),
      );

  Preference<DateFormats> dateFormat() => preferenceStore.getEnum(
        Preference.appStateKey("dateFormat"),
        DateFormats.base,
        DateFormats.values,
      );

  Preference<bool> relativeTimestamps() => preferenceStore.getBool(
        Preference.appStateKey("relativeTimestamps"),
        true,
      );
}

@riverpod
AppearancePreferences appearancePreferences(AppearancePreferencesRef ref) =>
    AppearancePreferences(ref.watch(preferencesProvider));
