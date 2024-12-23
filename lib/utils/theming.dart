// import 'package:athena/features/theme/models/custom_colors.dart';
import 'package:athena/features/settings/screens/appearance/theme/model/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom colors
extension CustomColorExtension on ThemeData {
  CustomColors get extended => extension<CustomColors>()!;
}

// Theme data utilities
extension ThemeDataExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  CustomColors get extended => theme.extended;
  ColorScheme get scheme => theme.colorScheme;
  TextTheme get text => theme.textTheme;
}

// Brightness utilities
Brightness calculateBrightness(BuildContext context, ThemeMode themeMode) {
  // If theme mode is System, return system brightness
  if (themeMode == ThemeMode.system) {
    return MediaQuery.of(context).platformBrightness;
  }
  // If theme mode is Light, return light brightness
  // If theme mode is Dark, return dark brightness
  return themeMode == ThemeMode.light ? Brightness.light : Brightness.dark;
}

extension Invert on Brightness {
  Brightness get invert =>
      this == Brightness.dark ? Brightness.light : Brightness.dark;
}

SystemUiOverlayStyle calculateOverlayStyle(
  BuildContext context,
  Brightness brightness,
  bool bannersActive,
) {
  final statusBarColor = context.scheme.surfaceTint.withOpacity(0.002);
  final iconBrightness = brightness.invert;
  return SystemUiOverlayStyle(
    statusBarColor: statusBarColor,
    statusBarIconBrightness:
        bannersActive ? iconBrightness.invert : iconBrightness,
    systemNavigationBarColor: statusBarColor,
    systemNavigationBarIconBrightness: iconBrightness,
  );
}
