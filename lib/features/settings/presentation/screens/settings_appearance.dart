import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/searchable_settings.dart';
import 'package:athena/features/theme/data/prebuilt_themes.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

class IAppearanceSettings extends ISearchableSettings {
  const IAppearanceSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.preferenceCategoryAppearance.header;
  }

  @override
  Widget getWidget() => const AppearanceSettingsScreen();

  @override
  PageRouteInfo getRoute() => const AppearanceSettingsRoute();

  @override
  List<Preference> getPreferences(BuildContext context, WidgetRef ref) {
    final appearancePreferences = ref.watch(appearancePreferencesProvider);

    return [
      _getThemeGroup(context, appearancePreferences),
      _getDisplayGroup(context, appearancePreferences),
    ];
  }

  PreferenceGroup _getThemeGroup(
      BuildContext context, AppearancePreferences appearancePreferences) {
    final router = AutoRouter.of(context);

    return PreferenceGroup(
      title: context.locale.preferenceHeaderTheme,
      preferenceItems: [
        SegmentPreference(
          title: 'Mode',
          pref: appearancePreferences.themeMode(),
          options: [
            Segment(
              value: ThemeMode.system,
              label: context.locale.preferenceMode.system,
            ),
            Segment(
              value: ThemeMode.light,
              label: context.locale.preferenceMode.light,
            ),
            Segment(
              value: ThemeMode.dark,
              label: context.locale.preferenceMode.dark,
            ),
          ],
        ),
        SliderPreference(
          title: context.locale.preferenceContrast.header,
          subtitle: context.locale.preferenceContrast.summary,
          pref: appearancePreferences.contrastLevel(),
          min: -1.0,
          max: 1.0,
          step: 0.5,
        ),
        TextPreference(
          title: context.locale.preferenceTheme.header,
          subtitle: context.locale.preferenceTheme.subheader(
            getThemeName(
              context,
              appearancePreferences.themeName().get(),
            ),
          ),
          icon: Icons.palette,
          onClick: () => router.push(const ThemeSelectionRoute()),
        ),
        SwitchPreference(
          title: context.locale.preferenceAmoledDark.header,
          subtitle: context.locale.preferenceAmoledDark.summary,
          icon: Icons.brightness_3,
          pref: appearancePreferences.pureBlack(),
        ),
      ],
    );
  }

  PreferenceGroup _getDisplayGroup(
      BuildContext context, AppearancePreferences appearancePreferences) {
    final router = AutoRouter.of(context);

    return PreferenceGroup(
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
            appearancePreferences.dateFormat().get() == DateFormats.base
                ? 'Default'
                : appearancePreferences.dateFormat().get().format,
            DateFormat(appearancePreferences.dateFormat().get().format)
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
                                  value: f.contains(
                                    appearancePreferences
                                        .dateFormat()
                                        .get()
                                        .format,
                                  ),
                                  groupValue: true,
                                  onChanged: (value) {
                                    appearancePreferences.dateFormat().set(
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
                                  appearancePreferences.dateFormat().set(
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
            DateFormat(appearancePreferences.dateFormat().get().format)
                .format(DateTime.now()),
          ),
          icon: Icons.schedule,
          pref: appearancePreferences.relativeTimestamps(),
        ),
      ],
    );
  }
}

@RoutePage()
class AppearanceSettingsScreen extends ConsumerWidget {
  const AppearanceSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = IAppearanceSettings();
    return SearchableSettings(
      title: settings.getTitle(context),
      preferences: () => settings.getPreferences(context, ref),
    );
  }
}
