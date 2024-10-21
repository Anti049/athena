import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/localization/translations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SettingsAppearanceScreen extends ConsumerWidget {
  const SettingsAppearanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(appearancePreferencesProvider);
    final router = AutoRouter.of(context);
    final items = [
      PreferenceGroup(
        title: context.locale.preferenceHeaderTheme,
        preferenceItems: [
          CustomPreference(
            title: 'Mode',
            content: const Column(
              children: [
                // PreferenceSegmentedButton(
                //   value: preferences.themeMode,
                //   options: const [
                //     PreferenceSegment(value: ThemeMode.system, label: 'System'),
                //     PreferenceSegment(value: ThemeMode.light, label: 'Light'),
                //     PreferenceSegment(value: ThemeMode.dark, label: 'Dark'),
                //   ],
                //   onChanged: (newThemeMode) {
                //     preferenceNotifier
                //         .updateThemeMode(newThemeMode as ThemeMode);
                //   },
                // ),
              ],
            ),
          ),
          TextPreference(
            title: context.locale.preferenceTheme.header,
            subtitle: context.locale.preferenceTheme.subheader('Test'),
            icon: Icons.palette,
            onClick: () => router.pushNamed('/theme-selection'),
          ),
          SwitchPreference(
            title: context.locale.preferenceAmoledDark.title,
            subtitle: context.locale.preferenceAmoledDark.summary,
            icon: Icons.brightness_3,
            pref: preferences.pureBlack(),
          ),
        ],
      ),
    ];

    return PreferenceScaffold(
      title: context.locale.preferenceCategoryAppearance.title,
      itemsProvider: () => items,
    );
  }
}
