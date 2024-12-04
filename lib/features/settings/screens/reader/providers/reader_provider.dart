import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reader_provider.g.dart';

class ReaderPreferences {
  ReaderPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
ReaderPreferences readerPreferences(ReaderPreferencesRef ref) =>
    ReaderPreferences(ref.watch(preferencesProvider));
