import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

extension CustomColorExtension on ThemeData {
  CustomColors get extended => extension<CustomColors>()!;
}

extension ThemeDataExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get scheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.info,
    required this.success,
    required this.alert,
    required this.warning,
  });

  final Color? info;
  final Color? success;
  final Color? alert;
  final Color? warning;

  @override
  CustomColors copyWith(
      {Color? info, Color? success, Color? alert, Color? warning}) {
    return CustomColors(
      info: info ?? this.info,
      success: success ?? this.success,
      alert: alert ?? this.alert,
      warning: warning ?? this.warning,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      info: Color.lerp(info, other.info, t),
      success: Color.lerp(success, other.success, t),
      alert: Color.lerp(alert, other.alert, t),
      warning: Color.lerp(warning, other.warning, t),
    );
  }

  CustomColors harmonized(Color harmonizeWith) {
    return copyWith(
      info: info!.harmonizeWith(harmonizeWith),
      success: success!.harmonizeWith(harmonizeWith),
      alert: alert!.harmonizeWith(harmonizeWith),
      warning: warning!.harmonizeWith(harmonizeWith),
    );
  }
}
