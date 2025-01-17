import 'package:athena/features/settings/screens/appearance/theme/model/theme.dart';
import 'package:athena/utils/enums.dart';
import 'package:flutter/material.dart';

final draculaTheme = AppTheme.fromSchemes(
  'dracula',
  ThemeCategory.custom,
  light: const ColorScheme.light(
    primary: Color(0xff615690),
    surfaceTint: Color(0xff615690),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffe6deff),
    onPrimaryContainer: Color(0xff1d1148),
    secondary: Color(0xff8d4a5b),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffffd9e0),
    onSecondaryContainer: Color(0xff3a0719),
    tertiary: Color(0xff236488),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffc8e6ff),
    onTertiaryContainer: Color(0xff001e2e),
    error: Color(0xff904b40),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad4),
    onErrorContainer: Color(0xff3a0905),
    surface: Color(0xfff5fafb),
    onSurface: Color(0xff171d1e),
    onSurfaceVariant: Color(0xff45464f),
    outline: Color(0xff767680),
    outlineVariant: Color(0xffc6c5d0),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2b3133),
    inversePrimary: Color(0xffcbbeff),
    primaryFixed: Color(0xffe6deff),
    onPrimaryFixed: Color(0xff1d1148),
    primaryFixedDim: Color(0xffcbbeff),
    onPrimaryFixedVariant: Color(0xff493f77),
    secondaryFixed: Color(0xffffd9e0),
    onSecondaryFixed: Color(0xff3a0719),
    secondaryFixedDim: Color(0xffffb1c2),
    onSecondaryFixedVariant: Color(0xff713344),
    tertiaryFixed: Color(0xffc8e6ff),
    onTertiaryFixed: Color(0xff001e2e),
    tertiaryFixedDim: Color(0xff93cdf6),
    onTertiaryFixedVariant: Color(0xff004c6d),
    surfaceDim: Color(0xffd5dbdc),
    surfaceBright: Color(0xfff5fafb),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xffeff5f6),
    surfaceContainer: Color(0xffe9eff0),
    surfaceContainerHigh: Color(0xffe3e9ea),
    surfaceContainerHighest: Color(0xffdee3e5),
  ),
  dark: const ColorScheme.dark(
    primary: Color(0xffc9beff),
    surfaceTint: Color(0xffc9beff),
    onPrimary: Color(0xff31285f),
    primaryContainer: Color(0xff483f77),
    onPrimaryContainer: Color(0xffe6deff),
    secondary: Color(0xfffeb0d2),
    onSecondary: Color(0xff521d39),
    secondaryContainer: Color(0xff6d3350),
    onSecondaryContainer: Color(0xffffd8e7),
    tertiary: Color(0xff83d5c6),
    onTertiary: Color(0xff003731),
    tertiaryContainer: Color(0xff005047),
    onTertiaryContainer: Color(0xff9ff2e2),
    error: Color(0xffffb4a5),
    onError: Color(0xff561e14),
    errorContainer: Color(0xff733428),
    onErrorContainer: Color(0xffffdad3),
    surface: Color(0xff131318),
    onSurface: Color(0xffe5e1e9),
    onSurfaceVariant: Color(0xffc9c5d0),
    outline: Color(0xff938f99),
    outlineVariant: Color(0xff48454e),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe5e1e9),
    inversePrimary: Color(0xff605790),
    primaryFixed: Color(0xffe6deff),
    onPrimaryFixed: Color(0xff1c1149),
    primaryFixedDim: Color(0xffc9beff),
    onPrimaryFixedVariant: Color(0xff483f77),
    secondaryFixed: Color(0xffffd8e7),
    onSecondaryFixed: Color(0xff380723),
    secondaryFixedDim: Color(0xfffeb0d2),
    onSecondaryFixedVariant: Color(0xff6d3350),
    tertiaryFixed: Color(0xff9ff2e2),
    onTertiaryFixed: Color(0xff00201c),
    tertiaryFixedDim: Color(0xff83d5c6),
    onTertiaryFixedVariant: Color(0xff005047),
    surfaceDim: Color(0xff131318),
    surfaceBright: Color(0xff3a383f),
    surfaceContainerLowest: Color(0xff0e0e13),
    surfaceContainerLow: Color(0xff1c1b20),
    surfaceContainer: Color(0xff201f25),
    surfaceContainerHigh: Color(0xff2a292f),
    surfaceContainerHighest: Color(0xff35343a),
  ),
);
