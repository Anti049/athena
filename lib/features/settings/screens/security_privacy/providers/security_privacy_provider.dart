import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'security_privacy_provider.g.dart';

class SecurityPrivacyPreferences {
  SecurityPrivacyPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
SecurityPrivacyPreferences securityPrivacyPreferences(
        SecurityPrivacyPreferencesRef ref) =>
    SecurityPrivacyPreferences(ref.watch(preferencesProvider));
