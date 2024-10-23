import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/features/theme/data/prebuilt_themes.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/presentation/more/settings/components/preference_segmented_button.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class SettingsAppearanceScreen extends ConsumerWidget {
  const SettingsAppearanceScreen({super.key});

  bool formatActive(String text, DateFormats format) {
    return text.contains(format.format);
  }

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
            content: Column(
              children: [
                PreferenceSegmentedButton(
                  value: preferences.themeMode().get(),
                  options: [
                    PreferenceSegment(
                      value: ThemeMode.system,
                      label: context.locale.preferenceMode.system,
                    ),
                    PreferenceSegment(
                      value: ThemeMode.light,
                      label: context.locale.preferenceMode.light,
                    ),
                    PreferenceSegment(
                      value: ThemeMode.dark,
                      label: context.locale.preferenceMode.dark,
                    ),
                  ],
                  onChanged: (newThemeMode) {
                    preferences.themeMode().set(newThemeMode);
                  },
                ),
              ],
            ),
          ),
          TextPreference(
            title: context.locale.preferenceTheme.header,
            subtitle: context.locale.preferenceTheme.subheader(
              getThemeName(
                context,
                preferences.themeName().get(),
              ),
            ),
            icon: Icons.palette,
            onClick: () => router.push(const ThemeSelectionRoute()),
          ),
          SwitchPreference(
            title: context.locale.preferenceAmoledDark.header,
            subtitle: context.locale.preferenceAmoledDark.summary,
            icon: Icons.brightness_3,
            pref: preferences.pureBlack(),
          ),
        ],
      ),
      PreferenceGroup(
        title: context.locale.preferenceHeaderDisplay,
        preferenceItems: [
          TextPreference(
            title: context.locale.preferenceLanguage.header,
            subtitle: context.locale.preferenceLanguage.summary,
            icon: Icons.language,
            onClick: () => router.push(const LanguageSelectionRoute()),
          ),
          TextPreference(
            title: context.locale.preferenceDateFormat.header,
            subtitle: context.locale.preferenceDateFormat.summary(
              preferences.dateFormat().get() == DateFormats.base
                  ? 'Default'
                  : preferences.dateFormat().get().format,
              DateFormat(preferences.dateFormat().get().format)
                  .format(DateTime.now()),
            ),
            icon: Icons.date_range,
            onClick: () {
              // Get date formats
              final formats = DateFormats.values.map((f) {
                String label = f.format;
                String value = DateFormat(f.format).format(DateTime.now());
                return '$label ($value)';
              });
              // Show dialog
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Row(
                      children: [
                        Icon(
                          Symbols.date_range,
                          color: context.scheme.primary,
                        ),
                        const SizedBox(width: 16.0),
                        Text(context.locale.preferenceDateFormat.header),
                      ],
                    ),
                    clipBehavior: Clip.antiAlias,
                    content: SingleChildScrollView(
                      child: Column(
                        children: formats
                            .map((f) => ListTile(
                                  leading: Radio(
                                    value: formatActive(
                                      f,
                                      preferences.dateFormat().get(),
                                    ),
                                    groupValue: true,
                                    onChanged: (value) {
                                      preferences.dateFormat().set(
                                            DateFormats.values.firstWhere(
                                              (element) =>
                                                  element.format ==
                                                  f.split(' ')[0],
                                            ),
                                          );
                                      Navigator.pop(context);
                                    },
                                  ),
                                  title: Text(f),
                                  onTap: () {
                                    preferences.dateFormat().set(
                                          DateFormats.values.firstWhere(
                                            (element) =>
                                                element.format ==
                                                f.split(' (')[0],
                                          ),
                                        );
                                    Navigator.pop(context);
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(context.locale.actionCancel),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          SwitchPreference(
            title: context.locale.preferenceRelativeTimestamps.header,
            subtitle: context.locale.preferenceRelativeTimestamps.summary(
              DateFormat(preferences.dateFormat().get().format)
                  .format(DateTime.now()),
            ),
            icon: Icons.schedule,
            pref: preferences.relativeTimestamps(),
          ),
        ],
      ),
    ];

    return PreferenceScaffold(
      title: context.locale.preferenceCategoryAppearance.header,
      itemsProvider: () => items,
    );
  }
}
