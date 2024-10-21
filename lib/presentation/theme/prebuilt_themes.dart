import 'package:athena/presentation/theme/prebuilt_themes/base_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/default_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/dracula_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/green_apple_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/lavender_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/midnight_dusk_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/nord_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/silver_wolf_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/strawberry_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/tako_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/teal_turquoise_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/tidal_wave_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/yin_yang_theme.dart';
import 'package:athena/presentation/theme/prebuilt_themes/yotsuba_theme.dart';
import 'package:athena/utils/locale.dart';
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
    _ => context.locale.preferenceTheme.base,
  };
}
