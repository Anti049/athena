import 'package:athena/features/more/settings/appearance/appearance_screen.dart';
import 'package:athena/features/more/settings/appearance/providers/appearance_provider.dart';
import 'package:athena/features/more/settings/appearance/theme/data/prebuilt_themes.dart';
import 'package:athena/features/more/settings/models/searchable_settings.dart';
import 'package:athena/features/more/settings/models/setting.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:athena/router/router.gr.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:material_symbols_icons/symbols.dart';

class IAppearanceSettings extends ISearchableSettings {
  const IAppearanceSettings();
  @override
  String getTitle(BuildContext context) {
    return 'Appearance';
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
      title: 'Theme',
      settings: [
        ChoiceSetting(
          title: '',
          choices: [
            Choice(label: 'System', value: ThemeMode.system),
            Choice(label: 'Light', value: ThemeMode.light),
            Choice(label: 'Dark', value: ThemeMode.dark),
          ],
          preference: appearancePreferences.themeMode(),
        ),
        SliderSetting(
          title: 'Blend Level',
          preference: appearancePreferences.blendLevel(),
          min: 0,
          max: 40.0,
          divisions: 40,
          enabled: !appearancePreferences.pureBlack().get(),
        ),
        TextSetting(
          title: 'Theme',
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
          title: 'Pure Black',
          subtitle: 'Enable pure black background',
          icon: Symbols.contrast,
          preference: appearancePreferences.pureBlack(),
          enabled: appearancePreferences.themeMode().get() != ThemeMode.light,
        ),
      ],
    );
  }
}
