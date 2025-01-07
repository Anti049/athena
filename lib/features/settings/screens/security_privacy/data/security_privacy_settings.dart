import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/security_privacy/security_privacy_screen.dart';
import 'package:athena/features/settings/screens/security_privacy/providers/security_privacy_provider.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class ISecurityPrivacySettings extends ISearchableSettings {
  const ISecurityPrivacySettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.securityPrivacy.title;
  }

  @override
  Widget getWidget() {
    return const SecurityPrivacySettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const SecurityPrivacySettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(securityPrivacyPreferencesProvider);

    return [];
  }
}
