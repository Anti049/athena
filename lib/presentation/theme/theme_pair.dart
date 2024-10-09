import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:athena/presentation/theme/custom_colors.dart';

part 'theme_pair.freezed.dart';

@freezed
class ThemePair with _$ThemePair {
  const factory ThemePair({
    required String name,
    required ThemeData light,
    required ThemeData dark,
  }) = _ThemePair;

  factory ThemePair.create(
    String name,
    ColorScheme lightScheme,
    ColorScheme darkScheme, {
    CustomColors? extendedLight,
    CustomColors? extendedDark,
    bool amoled = false,
  }) {
    // Light
    CustomColors? lightExtended =
        extendedLight?.harmonized(lightScheme.primary);

    // Dark
    CustomColors? darkExtended = extendedDark?.harmonized(darkScheme.primary);

    // Amoled
    if (amoled) {
      darkScheme = darkScheme.copyWith(
        surface: Colors.black,
        onSurface: Colors.white,
      );
    }

    // Theme
    return ThemePair(
      name: name,
      light: ThemeData(
        brightness: Brightness.light,
        colorScheme: lightScheme,
        extensions: lightExtended != null ? [lightExtended] : null,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        colorScheme: darkScheme,
        extensions: darkExtended != null ? [darkExtended] : null,
      ),
    );
  }

  factory ThemePair.generate(
    String name,
    Color primary, {
    Color? secondary,
    Color? tertiary,
    Color? error,
    Color? neutral,
    Color? neutralVariant,
    CustomColors? extendedLight,
    CustomColors? extendedDark,
    double contrast = 0.0,
    FlexSchemeVariant variant = FlexSchemeVariant.tonalSpot,
    bool amoled = false,
  }) {
    // Light
    ColorScheme lightScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      neutralVariantKey: neutralVariant,
      contrastLevel: contrast,
      variant: variant,
    );
    CustomColors? lightExtended =
        extendedLight?.harmonized(lightScheme.primary);

    // Dark
    ColorScheme darkScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      neutralVariantKey: neutralVariant,
      contrastLevel: contrast,
      variant: variant,
    );
    CustomColors? darkExtended = extendedDark?.harmonized(darkScheme.primary);

    // Amoled
    if (amoled) {
      darkScheme = darkScheme.copyWith(
        surface: Colors.black,
        onSurface: Colors.white,
      );
    }

    // Theme
    return ThemePair(
      name: name,
      light: ThemeData(
        brightness: Brightness.light,
        colorScheme: lightScheme,
        extensions: lightExtended != null ? [lightExtended] : null,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        colorScheme: darkScheme,
        extensions: darkExtended != null ? [darkExtended] : null,
      ),
    );
  }
}
