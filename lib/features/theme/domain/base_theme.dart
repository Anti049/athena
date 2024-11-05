import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_theme.freezed.dart';

const CONTRAST_MIN = -1.0;
const CONTRAST_MAX = 1.0;
const CONTRAST_STEP = 0.5;

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

class ThemeInfo {
  final String title;
  final String author;
  final Map<String, String> seedColors;
  final String link;

  ThemeInfo({
    required this.title,
    required this.author,
    required this.seedColors,
    required this.link,
  });
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
    ColorScheme? lightScheme,
    ColorScheme? darkScheme,
    Map<double, ColorScheme>? lightSchemes,
    Map<double, ColorScheme>? darkSchemes,
    ThemeInfo? info,
  }) = _BaseTheme;

  factory BaseTheme.fromPrebuilt(
    BasePrebuiltTheme prebuilt, {
    ThemeCategory category = ThemeCategory.base,
  }) {
    return BaseTheme(
      name: prebuilt.name,
      category: category,
      lightScheme: prebuilt.lightColorScheme,
      darkScheme: prebuilt.darkColorScheme,
    );
  }

  factory BaseTheme.fromColors(
    String name,
    ThemeCategory category,
    Color primary, {
    Color? secondary,
    Color? tertiary,
    Color? error,
    Color? neutral,
    FlexSchemeVariant variant = FlexSchemeVariant.material,
    ThemeInfo? info,
  }) {
    // Light
    // - Normal Contrast
    ColorScheme lightScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      contrastLevel: 0.0,
      variant: variant,
    );

    // Dark
    // - Normal Contrast
    ColorScheme darkScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      contrastLevel: 0.0,
      variant: variant,
    );

    // Calculate themes
    Map<double, ColorScheme> lightSchemes = {};
    Map<double, ColorScheme> darkSchemes = {};
    for (var contrast = CONTRAST_MIN;
        contrast <= CONTRAST_MAX;
        contrast += CONTRAST_STEP) {
      lightSchemes.putIfAbsent(
          contrast,
          () => SeedColorScheme.fromSeeds(
                brightness: Brightness.light,
                primaryKey: primary,
                secondaryKey: secondary,
                tertiaryKey: tertiary,
                neutralKey: neutral,
                errorKey: error,
                contrastLevel: contrast,
                variant: variant,
              ));
      darkSchemes.putIfAbsent(
          contrast,
          () => SeedColorScheme.fromSeeds(
                brightness: Brightness.dark,
                primaryKey: primary,
                secondaryKey: secondary,
                tertiaryKey: tertiary,
                neutralKey: neutral,
                errorKey: error,
                contrastLevel: contrast,
                variant: variant,
              ));
    }

    return BaseTheme(
      name: name,
      category: category,
      lightScheme: lightScheme,
      lightSchemes: lightSchemes,
      darkScheme: darkScheme,
      darkSchemes: darkSchemes,
    );
  }

  ColorScheme getColorScheme(
    Brightness brightness, {
    double contrast = 0.0,
  }) {
    return switch (brightness) {
      Brightness.light =>
        lightSchemes?[contrast] ?? lightScheme ?? const ColorScheme.light(),
      Brightness.dark =>
        darkSchemes?[contrast] ?? darkScheme ?? const ColorScheme.dark(),
    };
  }
}
