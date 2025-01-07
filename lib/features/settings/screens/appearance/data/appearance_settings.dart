import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/appearance/appearance_screen.dart';
import 'package:athena/features/settings/screens/appearance/providers/appearance_provider.dart';
import 'package:athena/features/settings/screens/appearance/theme/data/prebuilt_themes.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class IAppearanceSettings extends ISearchableSettings {
  const IAppearanceSettings();
  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.appearance.title;
  }

  @override
  Widget getWidget() {
    return const AppearanceSettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const AppearanceSettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    return [
      _getThemeGroup(context, ref),
    ];
  }

  SettingGroup _getThemeGroup(
    BuildContext context,
    WidgetRef ref,
  ) {
    final router = AutoRouter.of(context);
    final appearancePreferences = ref.watch(appearancePreferencesProvider);

    return SettingGroup(
      title: context.locale.settings.appearance.theme,
      settings: [
        ChoiceSetting(
          title: '',
          choices: [
            Choice(
              label: context.locale.settings.appearance.mode.system,
              value: ThemeMode.system,
            ),
            Choice(
              label: context.locale.settings.appearance.mode.light,
              value: ThemeMode.light,
            ),
            Choice(
              label: context.locale.settings.appearance.mode.dark,
              value: ThemeMode.dark,
            ),
          ],
          preference: appearancePreferences.themeMode(),
          type: ChoiceType.segmented,
        ),
        SliderSetting(
          title: context.locale.settings.appearance.blendLevel,
          preference: appearancePreferences.blendLevel(),
          min: 0,
          max: 40.0,
          divisions: 40,
          enabled: !appearancePreferences.pureBlack().get(),
        ),
        TextSetting(
          title: context.locale.settings.appearance.themeSelection.title,
          subtitle: getThemeName(
            context,
            appearancePreferences.themeName().get(),
          ),
          icon: Symbols.palette,
          onClick: () {
            router.push(const ThemeSelectionRoute());
          },
        ),
        SwitchSetting(
          title: context.locale.settings.appearance.pureBlack.title,
          subtitle: context.locale.settings.appearance.pureBlack.subtitle,
          icon: Symbols.contrast,
          preference: appearancePreferences.pureBlack(),
          enabled: appearancePreferences.themeMode().get() != ThemeMode.light,
        ),
      ],
    );
  }
}
