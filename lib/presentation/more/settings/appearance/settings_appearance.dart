import 'package:athena/core/preference/preferences_provider.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/presentation/more/settings/components/preference_scaffold.dart';
import 'package:athena/presentation/more/settings/components/preference_segmented_button.dart';
import 'package:athena/presentation/more/settings/components/searchable_settings.dart';
import 'package:athena/presentation/more/settings/components/theme_preview.dart';
import 'package:athena/presentation/more/settings/models/preference.dart';
import 'package:athena/presentation/theme/prebuilt_themes.dart';
import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SettingsAppearanceScreen extends ConsumerWidget {
  const SettingsAppearanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferenceNotifier = ref.watch(preferencesProvider.notifier);
    final preferences = ref.watch(preferencesProvider);
    final themeName = getThemeName(context, preferences.themeName);
    final themes = prebuiltThemes;
    final columns = context.isCompact
        ? 3
        : context.isMedium
            ? 4
            : context.isExpanded
                ? 5
                : context.isLarge
                    ? 6
                    : 7;
    final rows = (prebuiltThemes.length / columns).ceil();
    // Appearance items
    final items = [
      PreferenceGroup(
        title: context.locale.preferenceHeaderTheme,
        preferenceItems: [
          CustomPreference(
            title: 'Mode',
            content: Column(
              children: [
                PreferenceSegmentedButton(
                  value: preferences.themeMode,
                  options: const [
                    PreferenceSegment(value: ThemeMode.system, label: 'System'),
                    PreferenceSegment(value: ThemeMode.light, label: 'Light'),
                    PreferenceSegment(value: ThemeMode.dark, label: 'Dark'),
                  ],
                  onChanged: (newThemeMode) {
                    preferenceNotifier
                        .updateThemeMode(newThemeMode as ThemeMode);
                  },
                ),
              ],
            ),
          ),
          TextPreference(
            title: context.locale.preferenceTheme.header,
            subtitle: context.locale.preferenceTheme.subheader(themeName),
            onClick: () => context.push('/theme-selection'),
          ),
          // SwitchPreference(
          //   title: context.locale.preferenceAmoledDark.title,
          //   subtitle: context.locale.preferenceAmoledDark.summary,
          //   onValueChanged: (checked) {
          //     preferenceNotifier.updatePureBlack(checked);
          //   },
          // ),
        ],
      ),
    ];

    return PreferenceScaffold(
      title: 'Appearance',
      itemsProvider: () => items,
    );
  }
}
