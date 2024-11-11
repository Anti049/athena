import 'package:athena/features/settings/providers/common_preference_store.dart';
import 'package:athena/features/settings/providers/preference.dart';
import 'package:athena/features/settings/providers/preference_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_preferences.g.dart';

class NotificationPreferences {
  NotificationPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<bool> notificationsEnabled() => preferenceStore.getBool(
        Preference.appStateKey("notificationsEnabled"),
        true,
      );

  Preference<bool> notificationsVibrate() => preferenceStore.getBool(
        Preference.appStateKey("notificationsVibrate"),
        true,
      );

  Preference<bool> notificationsSound() => preferenceStore.getBool(
        Preference.appStateKey("notificationsSound"),
        true,
      );
}

@riverpod
NotificationPreferences notificationPreferences(
        NotificationPreferencesRef ref) =>
    NotificationPreferences(ref.watch(preferencesProvider));
