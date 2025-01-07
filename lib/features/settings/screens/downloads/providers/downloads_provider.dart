import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'downloads_provider.g.dart';

class DownloadsPreferences {
  DownloadsPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
DownloadsPreferences downloadsPreferences(DownloadsPreferencesRef ref) =>
    DownloadsPreferences(ref.watch(preferencesProvider));
