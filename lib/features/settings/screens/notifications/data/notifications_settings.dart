import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/notifications/notifications_screen.dart';
import 'package:athena/features/settings/screens/notifications/providers/notifications_provider.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class INotificationsSettings extends ISearchableSettings {
  const INotificationsSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.notifications.title;
  }

  @override
  Widget getWidget() {
    return const NotificationsSettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const NotificationsSettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(notificationsPreferencesProvider);

    return [];
  }
}
