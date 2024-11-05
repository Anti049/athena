import 'package:athena/features/theme/domain/base_theme.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/services.dart';

final defaultTheme = BaseTheme.fromColors(
  'default',
  ThemeCategory.base,
  Color(
    switch (appFlavor) {
      'development' => 0xFFFFB86C, // Orange for development
      'production' => 0xFF8BE9FD, // Cyan for production
      _ => 0xFF50FA7B, // Default green
    },
  ),
  variant: FlexSchemeVariant.vibrant,
);
