import 'package:athena/l10n/l10n.dart';
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
    'dynamic' => context.locale.theme_dynamic,
    'green_apple' => context.locale.theme_green_apple,
    'lavender' => context.locale.theme_lavender,
    'midnight_dusk' => context.locale.theme_midnight_dusk,
    'nord' => context.locale.theme_nord,
    'strawberry' => context.locale.theme_strawberry,
    'tako' => context.locale.theme_tako,
    'teal_turquoise' => context.locale.theme_teal_turquoise,
    'tidal_wave' => context.locale.theme_tidal_wave,
    'yin_yang' => context.locale.theme_yin_yang,
    'yotsuba' => context.locale.theme_yotsuba,
    'silver_wolf' => context.locale.theme_silver_wolf,
    'dracula_pro' => context.locale.theme_dracula,
    _ => context.locale.theme_default,
  };
}
