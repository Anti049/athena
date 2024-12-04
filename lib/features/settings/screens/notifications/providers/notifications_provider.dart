import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifications_provider.g.dart';

class NotificationsPreferences {
  NotificationsPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;
}

@riverpod
NotificationsPreferences notificationsPreferences(
        NotificationsPreferencesRef ref) =>
    NotificationsPreferences(ref.watch(preferencesProvider));
