import 'package:athena/features/settings/screens/appearance/theme/data/themes/all_themes.dart';
import 'package:athena/features/settings/screens/appearance/theme/model/theme.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/material.dart';

Map<String, AppTheme> prebuiltThemes = {
  systemTheme.name: systemTheme,
  // Dynamic theme will be loaded later
  // greenAppleTheme.name: greenAppleTheme,
  // lavenderTheme.name: lavenderTheme,
  // midnightDuskTheme.name: midnightDuskTheme,
  // nordTheme.name: nordTheme,
  // strawberryTheme.name: strawberryTheme,
  // takoTheme.name: takoTheme,
  // tealTurquoiseTheme.name: tealTurquoiseTheme,
  // tidalWaveTheme.name: tidalWaveTheme,
  // yinYangTheme.name: yinYangTheme,
  // yotsubaTheme.name: yotsubaTheme,
  // silverWolfTheme.name: silverWolfTheme,
  draculaTheme.name: draculaTheme,
  gaziterTheme.name: gaziterTheme,
};

void addTheme(AppTheme theme) {
  prebuiltThemes[theme.name] = theme;
}

String getThemeName(BuildContext context, String themeID) {
  final themeName = context.locale.themes[themeID];
  return themeName is String ? themeName : themeID;
}
