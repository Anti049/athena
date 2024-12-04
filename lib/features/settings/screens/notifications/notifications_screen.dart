import 'package:athena/features/settings/screens/notifications/data/notifications_settings.dart';
import 'package:athena/features/settings/presentation/setting_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class NotificationsSettingsScreen extends ConsumerWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = INotificationsSettings();
    return SearchableSettingScaffold(
      title: settings.getTitle(context),
      settingsProvider: () => settings.getSettings(context, ref),
    );
  }
}
