import 'package:athena/features/settings/providers/appearance_preferences.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/searchable_settings.dart';
import 'package:athena/features/theme/repositories/prebuilt_themes.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:change_case/change_case.dart';

class IAppearanceSettings extends ISearchableSettings {
  const IAppearanceSettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.page.settings.appearance.title;
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
      title: context.locale.settings.appearance.theming.title,
      preferenceItems: [
        SegmentPreference(
          title: context.locale.settings.appearance.theming.mode.title,
          pref: appearancePreferences.themeMode(),
          options: [
            Segment(
              value: ThemeMode.system,
              label: context.locale.settings.appearance.theming.mode.system,
            ),
            Segment(
              value: ThemeMode.light,
              label: context.locale.settings.appearance.theming.mode.light,
            ),
            Segment(
              value: ThemeMode.dark,
              label: context.locale.settings.appearance.theming.mode.dark,
            ),
          ],
        ),
        SliderPreference(
          title: context.locale.settings.appearance.theming.contrast,
          pref: appearancePreferences.contrastLevel(),
          min: -1.0,
          max: 1.0,
          step: 0.5,
        ),
        TextPreference(
          title: context.locale.settings.appearance.theming.theme.title,
          subtitle: context.locale.settings.appearance.theming.theme.subtitle(
            getThemeName(
              context,
              appearancePreferences.themeName().get(),
            ),
          ),
          icon: Icons.palette,
          onClick: () => router.push(const ThemeSelectionRoute()),
        ),
        SwitchPreference(
          title: context.locale.settings.appearance.theming.amoled.title,
          subtitle: context.locale.settings.appearance.theming.amoled.subtitle,
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
      title: context.locale.settings.appearance.display.title,
      preferenceItems: [
        TextPreference(
          title: context.locale.settings.appearance.display.language.title,
          subtitle:
              context.locale.settings.appearance.display.language.subtitle(
            LocaleNamesLocalizationsDelegate.nativeLocaleNames[
                        appearancePreferences.appLanguage().get().languageCode]
                    ?.toCapitalCase() ??
                appearancePreferences.appLanguage().get().languageCode,
          ),
          icon: Icons.language,
          onClick: () => router.push(const LanguageSelectionRoute()),
        ),
        TextPreference(
          title: context.locale.settings.appearance.display.dateFormat.title,
          subtitle:
              context.locale.settings.appearance.display.dateFormat.subtitle(
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
                      Text(context
                          .locale.settings.appearance.display.dateFormat.title),
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
                      child: Text(context.locale.action.cancel),
                    ),
                  ],
                );
              },
            );
          },
        ),
        SwitchPreference(
          title: context
              .locale.settings.appearance.display.relativeTimestamps.title,
          subtitle: context
              .locale.settings.appearance.display.relativeTimestamps
              .subtitle(
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
