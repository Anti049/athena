import 'package:athena/features/settings/screens/security_privacy/data/security_privacy_settings.dart';
import 'package:athena/features/settings/presentation/components/setting_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SecurityPrivacySettingsScreen extends ConsumerWidget {
  const SecurityPrivacySettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = ISecurityPrivacySettings();
    return SearchableSettingScaffold(
      title: settings.getTitle(context),
      settingsProvider: () => settings.getSettings(context, ref),
    );
  }
}
