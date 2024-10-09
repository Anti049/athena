import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_theme.freezed.dart';

enum ContrastLevel {
  low(-1.0),
  normal(0.0),
  medium(0.5),
  high(1.0);

  final double value;

  const ContrastLevel(this.value);

  ContrastLevel cycle() {
    switch (this) {
      case low:
        return normal;
      case normal:
        return medium;
      case medium:
        return high;
      case high:
        return low;
    }
  }
}

enum ThemeCategory {
  base('Base'),
  custom('Custom'),
  tachiyomi('Tachiyomi'),
  hsr('Honkai: Star Rail');

  final String name;

  const ThemeCategory(this.name);
}

class BasePrebuiltTheme {
  final String name;
  final ColorScheme lightColorScheme;
  final ColorScheme darkColorScheme;

  BasePrebuiltTheme(
    this.name, {
    required this.lightColorScheme,
    required this.darkColorScheme,
  });

  ColorScheme activeScheme(Brightness brightness) {
    return brightness == Brightness.light ? lightColorScheme : darkColorScheme;
  }
}

@freezed
class BaseTheme with _$BaseTheme {
  const BaseTheme._();

  const factory BaseTheme({
    required String name,
    required ThemeCategory category,
    required ColorScheme lightScheme,
    ColorScheme? lightLowContrastScheme,
    ColorScheme? lightMediumContrastScheme,
    ColorScheme? lightHighContrastScheme,
    required ColorScheme darkScheme,
    ColorScheme? darkLowContrastScheme,
    ColorScheme? darkMediumContrastScheme,
    ColorScheme? darkHighContrastScheme,
  }) = _BaseTheme;

  factory BaseTheme.fromPrebuilt(BasePrebuiltTheme prebuilt,
      {ThemeCategory category = ThemeCategory.base}) {
    return BaseTheme(
      name: prebuilt.name,
      category: ThemeCategory.tachiyomi,
      lightScheme: prebuilt.lightColorScheme,
      darkScheme: prebuilt.darkColorScheme,
    );
  }

  factory BaseTheme.fromDynamic({
    required ColorScheme lightDynamicScheme,
    required ColorScheme darkDynamicScheme,
  }) {
    return BaseTheme(
      name: 'dynamic',
      category: ThemeCategory.base,
      lightScheme: lightDynamicScheme,
      darkScheme: darkDynamicScheme,
    );
  }

  factory BaseTheme.fromColors(
    String name,
    ThemeCategory category,
    Color primary, {
    Color? secondary,
    Color? tertiary,
    Color? neutral,
    FlexSchemeVariant variant = FlexSchemeVariant.material,
  }) {
    // Light
    // - Low Contrast
    ColorScheme lightLowContrastScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.low.value,
      variant: variant,
    );
    // - Normal Contrast
    ColorScheme lightScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.normal.value,
      variant: variant,
    );
    // - Medium Contrast
    ColorScheme lightMediumContrastScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.medium.value,
      variant: variant,
    );
    // - High Contrast
    ColorScheme lightHighContrastScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.high.value,
      variant: variant,
    );

    // Dark
    // - Low Contrast
    ColorScheme darkLowContrastScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.low.value,
      variant: variant,
    );
    // - Normal Contrast
    ColorScheme darkScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.normal.value,
      variant: variant,
    );
    // - Medium Contrast
    ColorScheme darkMediumContrastScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.medium.value,
      variant: variant,
    );
    // - High Contrast
    ColorScheme darkHighContrastScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      neutralKey: neutral,
      contrastLevel: ContrastLevel.high.value,
      variant: variant,
    );

    return BaseTheme(
      name: name,
      category: category,
      lightScheme: lightScheme,
      lightLowContrastScheme: lightLowContrastScheme,
      lightMediumContrastScheme: lightMediumContrastScheme,
      lightHighContrastScheme: lightHighContrastScheme,
      darkScheme: darkScheme,
      darkLowContrastScheme: darkLowContrastScheme,
      darkMediumContrastScheme: darkMediumContrastScheme,
      darkHighContrastScheme: darkHighContrastScheme,
    );
  }

  ColorScheme getColorScheme(
    Brightness brightness, {
    ContrastLevel contrast = ContrastLevel.normal,
  }) {
    return switch (brightness) {
      Brightness.light => switch (contrast) {
          ContrastLevel.low => lightLowContrastScheme ?? lightScheme,
          ContrastLevel.medium => lightMediumContrastScheme ?? lightScheme,
          ContrastLevel.high => lightHighContrastScheme ?? lightScheme,
          _ => lightScheme,
        },
      Brightness.dark => switch (contrast) {
          ContrastLevel.low => darkLowContrastScheme ?? darkScheme,
          ContrastLevel.medium => darkMediumContrastScheme ?? darkScheme,
          ContrastLevel.high => darkHighContrastScheme ?? darkScheme,
          _ => darkScheme,
        },
    };
  }
}
