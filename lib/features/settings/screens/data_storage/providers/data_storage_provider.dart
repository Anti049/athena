import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_storage_provider.g.dart';

class DataStoragePreferences {
  DataStoragePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
DataStoragePreferences dataStoragePreferences(DataStoragePreferencesRef ref) =>
    DataStoragePreferences(ref.watch(preferencesProvider));
