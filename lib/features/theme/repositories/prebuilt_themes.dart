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
    'dynamic' => context.locale.preferenceTheme.dynamic,
    'green_apple' => context.locale.preferenceTheme.greenApple,
    'lavender' => context.locale.preferenceTheme.lavender,
    'midnight_dusk' => context.locale.preferenceTheme.midnightDusk,
    'nord' => context.locale.preferenceTheme.nord,
    'strawberry' => context.locale.preferenceTheme.strawberry,
    'tako' => context.locale.preferenceTheme.tako,
    'teal_and_turquoise' => context.locale.preferenceTheme.tealTurquoise,
    'tidal_wave' => context.locale.preferenceTheme.tidalWave,
    'yin_yang' => context.locale.preferenceTheme.yinYang,
    'yotsuba' => context.locale.preferenceTheme.yotsuba,
    'silver_wolf' => context.locale.preferenceTheme.silverWolf,
    'dracula_pro' => context.locale.preferenceTheme.dracula,
    'gaziter' => context.locale.preferenceTheme.gaziter,
    _ => context.locale.preferenceTheme.base,
  };
}
