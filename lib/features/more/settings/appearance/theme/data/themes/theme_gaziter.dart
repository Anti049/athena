import 'package:athena/features/more/settings/appearance/theme/model/theme.dart';
import 'package:athena/utils/enums.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

final gaziterTheme = AppTheme.fromColors(
  'gaziter',
  ThemeCategory.system,
  const Color(0xFF48F7BD),
  secondary: const Color(0xFFC193FF),
  tertiary: const Color(0xFF54A5B6),
  error: const Color(0xFFFF5555),
  neutral: const Color(0xFF04485F),
  variant: FlexSchemeVariant.vibrant,
);
