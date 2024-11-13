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
  return context.locale.settings.appearance.theming.theme.themes[themeID]
      .toString();
}
