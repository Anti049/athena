import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tracking_provider.g.dart';

class TrackingPreferences {
  TrackingPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
TrackingPreferences trackingPreferences(TrackingPreferencesRef ref) =>
    TrackingPreferences(ref.watch(preferencesProvider));
