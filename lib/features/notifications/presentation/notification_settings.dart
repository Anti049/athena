import 'package:athena/features/notifications/providers/notification_manager.dart';
import 'package:athena/features/notifications/providers/notification_preferences.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/searchable_settings.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class INotificationSettings extends ISearchableSettings {
  const INotificationSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.page.settings.notifications;
  }

  @override
  Widget getWidget() => const NotificationSettingsScreen();

  @override
  PageRouteInfo getRoute() => const NotificationSettingsRoute();

  @override
  List<Preference> getPreferences(BuildContext context, WidgetRef ref) {
    final notificationPreferences = ref.watch(notificationPreferencesProvider);
    final notificationManager = ref.watch(notificationManagerProvider);

    return [
      TextPreference(
        title: context.locale.settings.notifications.test.title,
        subtitle: context.locale.settings.notifications.test.subtitle,
        onClick: () {
          notificationManager.sendNotification(
              title: 'Test', body: 'Test notification');
        },
      ),
      _getBasicSettings(context, notificationPreferences, notificationManager),
    ];
  }

  PreferenceGroup _getBasicSettings(
    BuildContext context,
    NotificationPreferences notificationPreferences,
    NotificationManager notificationManager,
  ) {
    return PreferenceGroup(
      title: context.locale.settings.notifications.basic.title,
      preferenceItems: [
        SwitchPreference(
          title: context.locale.settings.notifications.basic.enabled.title,
          subtitle:
              context.locale.settings.notifications.basic.enabled.subtitle,
          icon: Icons.notifications,
          pref: notificationPreferences.notificationsEnabled(),
        ),
        SwitchPreference(
          title: context.locale.settings.notifications.basic.vibrate.title,
          subtitle:
              context.locale.settings.notifications.basic.vibrate.subtitle,
          icon: Icons.vibration,
          pref: notificationPreferences.notificationsVibrate(),
        ),
        SwitchPreference(
          title: context.locale.settings.notifications.basic.sound.title,
          subtitle: context.locale.settings.notifications.basic.sound.subtitle,
          icon: Icons.volume_up,
          pref: notificationPreferences.notificationsSound(),
        ),
      ],
    );
  }
}

@RoutePage()
class NotificationSettingsScreen extends ConsumerWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = INotificationSettings();
    return SearchableSettings(
      title: settings.getTitle(context),
      preferences: () => settings.getPreferences(context, ref),
    );
  }
}
