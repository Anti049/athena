import 'package:athena/features/theme/models/base_theme.dart';
import 'package:flutter/material.dart';

/// Colors for Tidal Wave theme
/// Original color scheme by NahutabDevelop
///
/// Key colors:
/// Primary #004152
/// Secondary #5ed4fc
/// Tertiary #92f7bc
/// Neutral #16151D
final tidalWaveTheme = BaseTheme.fromColors(
  'tidal_wave',
  ThemeCategory.tachiyomi,
  const Color(0xFF004152),
  secondary: const Color(0xFF5ed4fc),
  tertiary: const Color(0xFF92f7bc),
  neutral: const Color(0xFF16151D),
);
