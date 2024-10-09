import 'package:flutter/material.dart';

Brightness calculateBrightness(BuildContext context, ThemeMode themeMode) {
  // If theme mode is System, return system brightness
  if (themeMode == ThemeMode.system) {
    return MediaQuery.of(context).platformBrightness;
  }
  // If theme mode is Light, return light brightness
  // If theme mode is Dark, return dark brightness
  return themeMode == ThemeMode.light ? Brightness.light : Brightness.dark;
}

Brightness getInverseBrightness(Brightness brightness) {
  return brightness == Brightness.dark ? Brightness.light : Brightness.dark;
}
