import 'package:athena/utils/enums.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme.freezed.dart';

@Freezed(genericArgumentFactories: true)
class SchemePair<T> with _$SchemePair<T> {
  const SchemePair._();
  const factory SchemePair({
    required T light,
    required T dark,
  }) = _SchemePair<T>;

  T get(Brightness brightness) {
    return brightness == Brightness.light ? light : dark;
  }

  FlexSchemeColor? getFlex(Brightness brightness) {
    if (T == FlexSchemeColor) {
      return get(brightness) as FlexSchemeColor;
    }
    return null;
  }

  ColorScheme? getScheme(Brightness brightness) {
    if (T == ColorScheme) {
      return get(brightness) as ColorScheme;
    }
    return null;
  }
}

@freezed
class AppTheme with _$AppTheme {
  const AppTheme._();
  const factory AppTheme({
    required String name,
    @Default(ThemeCategory.custom) ThemeCategory category,
    required SchemePair schemes,
    @Default(FlexSchemeVariant.material) FlexSchemeVariant variant,
  }) = _AppTheme;

  factory AppTheme.fromColors(
    String name,
    ThemeCategory category,
    Color primary, {
    Color? secondary,
    Color? tertiary,
    Color? error,
    Color? neutral,
    FlexSchemeVariant variant = FlexSchemeVariant.material,
  }) {
    final lightScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      variant: variant,
      contrastLevel: 0.0,
    );
    final darkScheme = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primary,
      secondaryKey: secondary,
      tertiaryKey: tertiary,
      errorKey: error,
      neutralKey: neutral,
      variant: variant,
      contrastLevel: 0.0,
    );

    return AppTheme(
      name: name,
      category: category,
      schemes: SchemePair<ColorScheme>(
        light: lightScheme,
        dark: darkScheme,
      ),
      variant: variant,
    );
  }

  factory AppTheme.fromSchemes(
    String name,
    ThemeCategory category, {
    required ColorScheme light,
    required ColorScheme dark,
  }) {
    return AppTheme(
      name: name,
      category: category,
      schemes: SchemePair<ColorScheme>(
        light: light,
        dark: dark,
      ),
    );
  }

  factory AppTheme.fromFlexScheme(
    String name,
    ThemeCategory category, {
    required FlexSchemeColor light,
    required FlexSchemeColor dark,
  }) {
    return AppTheme(
      name: name,
      category: category,
      schemes: SchemePair<FlexSchemeColor>(
        light: light,
        dark: dark,
      ),
    );
  }

  ThemeData light({
    int blendLevel = 0,
    String? appFont,
  }) {
    return FlexThemeData.light(
      useMaterial3: true,
      colors: schemes.getFlex(Brightness.light),
      colorScheme: schemes.getScheme(Brightness.light),
      variant: variant,
      surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
      blendLevel: blendLevel,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        thinBorderWidth: 2.0,
        unselectedToggleIsColored: true,
        inputDecoratorRadius: 24.0,
        chipRadius: 24.0,
        dialogBackgroundSchemeColor: SchemeColor.surface,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: appFont,
    );
  }

  ThemeData dark({
    int blendLevel = 0,
    String? appFont,
    bool pureBlack = false,
  }) {
    final colors = schemes.getFlex(Brightness.dark);
    final colorScheme = schemes.getScheme(Brightness.dark);

    return FlexThemeData.dark(
      useMaterial3: true,
      colors: colors,
      colorScheme: colorScheme,
      variant: variant,
      surfaceMode: FlexSurfaceMode.level,
      blendLevel: blendLevel,
      scaffoldBackground: pureBlack ? Colors.black : null,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        thinBorderWidth: 2.0,
        unselectedToggleIsColored: true,
        inputDecoratorRadius: 24.0,
        chipRadius: 24.0,
        dialogBackgroundSchemeColor: SchemeColor.surface,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: appFont,
    );
  }

  ThemeData getThemeData(Brightness brightness) {
    return brightness == Brightness.light ? light() : dark();
  }

  ColorScheme get lightScheme => schemes.getScheme(Brightness.light)!;
  ColorScheme get darkScheme => schemes.getScheme(Brightness.dark)!;

  FlexSchemeColor get lightFlexScheme => schemes.getFlex(Brightness.light)!;
  FlexSchemeColor get darkFlexScheme => schemes.getFlex(Brightness.dark)!;
}
