import 'package:athena/features/theme/domain/base_theme.dart';
import 'package:flutter/material.dart';

/// Colors for Lavender theme
/// Color scheme by Osyx
///
/// Key colors:
/// Primary #A177FF
/// Secondary #A177FF
/// Tertiary #5E25E1
/// Neutral #111129
final lavenderTheme = BaseTheme.fromColors(
  'lavender',
  ThemeCategory.tachiyomi,
  const Color(0xFFA177FF),
  secondary: const Color(0xFFA177FF),
  tertiary: const Color(0xFF5E25E1),
  neutral: const Color(0xFF111129),
);
