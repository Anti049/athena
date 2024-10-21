import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    final items = [
      TextPreference(
        title: context.locale.preferenceCategoryAppearance.title,
        subtitle: context.locale.preferenceCategoryAppearance.summary,
        icon: Icons.palette,
        onClick: () => router.push(const SettingsAppearanceRoute()),
      ),
    ];

    return PreferenceScaffold(
      title: 'Settings',
      itemsProvider: () => items,
    );
  }
}
