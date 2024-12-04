import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/advanced/advanced_screen.dart';
import 'package:athena/features/settings/screens/advanced/providers/advanced_provider.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class IAdvancedSettings extends ISearchableSettings {
  const IAdvancedSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.advanced.title;
  }

  @override
  Widget getWidget() {
    return const AdvancedSettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const AdvancedSettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(advancedPreferencesProvider);

    return [];
  }
}
