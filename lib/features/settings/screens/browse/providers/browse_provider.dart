import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'browse_provider.g.dart';

class BrowsePreferences {
  BrowsePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
BrowsePreferences browsePreferences(BrowsePreferencesRef ref) =>
    BrowsePreferences(ref.watch(preferencesProvider));
