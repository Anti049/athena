import 'package:athena/features/theme/repositories/theme_default.dart';
import 'package:athena/features/theme/repositories/theme_dracula.dart';
import 'package:athena/features/theme/repositories/theme_gaziter.dart';
import 'package:athena/features/theme/repositories/theme_green_apple.dart';
import 'package:athena/features/theme/repositories/theme_lavender.dart';
import 'package:athena/features/theme/repositories/theme_midnight_dusk.dart';
import 'package:athena/features/theme/repositories/theme_nord.dart';
import 'package:athena/features/theme/repositories/theme_silver_wolf.dart';
import 'package:athena/features/theme/repositories/theme_strawberry.dart';
import 'package:athena/features/theme/repositories/theme_tako.dart';
import 'package:athena/features/theme/repositories/theme_teal_turquoise.dart';
import 'package:athena/features/theme/repositories/theme_tidal_wave.dart';
import 'package:athena/features/theme/repositories/theme_yin_yang.dart';
import 'package:athena/features/theme/repositories/theme_yotsuba.dart';
import 'package:athena/features/theme/models/base_theme.dart';
import 'package:athena/localization/translations.dart';
import 'package:flutter/material.dart';

final Map<String, BaseTheme?> prebuiltThemes = {
  defaultTheme.name: defaultTheme,
  'dynamic': null, // Dynamic theme
  greenAppleTheme.name: greenAppleTheme,
  lavenderTheme.name: lavenderTheme,
  midnightDuskTheme.name: midnightDuskTheme,
  nordTheme.name: nordTheme,
  strawberryTheme.name: strawberryTheme,
  takoTheme.name: takoTheme,
  tealTurquoiseTheme.name: tealTurquoiseTheme,
  tidalWaveTheme.name: tidalWaveTheme,
  yinYangTheme.name: yinYangTheme,
  yotsubaTheme.name: yotsubaTheme,
  silverWolfTheme.name: silverWolfTheme,
  draculaTheme.name: draculaTheme,
  gaziterTheme.name: gaziterTheme,
};

String getThemeName(BuildContext context, String themeID) {
  return switch (themeID) {
    'dynamic' =>
      context.locale.settings.appearance.theming.theme.themes.dynamic,
    'green_apple' =>
      context.locale.settings.appearance.theming.theme.themes.greenApple,
    'lavender' =>
      context.locale.settings.appearance.theming.theme.themes.lavender,
    'midnight_dusk' =>
      context.locale.settings.appearance.theming.theme.themes.midnightDusk,
    'nord' => context.locale.settings.appearance.theming.theme.themes.nord,
    'strawberry' =>
      context.locale.settings.appearance.theming.theme.themes.strawberry,
    'tako' => context.locale.settings.appearance.theming.theme.themes.tako,
    'teal_and_turquoise' =>
      context.locale.settings.appearance.theming.theme.themes.tealTurquoise,
    'tidal_wave' =>
      context.locale.settings.appearance.theming.theme.themes.tidalWave,
    'yin_yang' =>
      context.locale.settings.appearance.theming.theme.themes.yinYang,
    'yotsuba' =>
      context.locale.settings.appearance.theming.theme.themes.yotsuba,
    'silver_wolf' =>
      context.locale.settings.appearance.theming.theme.themes.silverWolf,
    'dracula_pro' =>
      context.locale.settings.appearance.theming.theme.themes.dracula,
    'gaziter' =>
      context.locale.settings.appearance.theming.theme.themes.gaziter,
    _ => context.locale.settings.appearance.theming.theme.themes.system,
  };
}
