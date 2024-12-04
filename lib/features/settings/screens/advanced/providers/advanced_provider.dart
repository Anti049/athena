import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'advanced_provider.g.dart';

class AdvancedPreferences {
  AdvancedPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
AdvancedPreferences advancedPreferences(AdvancedPreferencesRef ref) =>
    AdvancedPreferences(ref.watch(preferencesProvider));
