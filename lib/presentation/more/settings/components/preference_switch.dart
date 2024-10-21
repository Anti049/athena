import 'package:athena/presentation/more/settings/components/base_preference_widget.dart';
import 'package:athena/presentation/more/settings/components/preference_text.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class PreferenceSwitch extends StatelessWidget {
  const PreferenceSwitch({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    required this.checked,
    required this.onCheckedChanged,
    this.enabled = true,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final bool checked;
  final ValueChanged<bool> onCheckedChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return PreferenceText(
      title: title,
      subtitle: subtitle,
      icon: icon,
      widget: Padding(
        padding: const EdgeInsetsDirectional.only(start: trailingWidgetBuffer),
        child: Switch.adaptive(
          value: checked,
          onChanged: null,
          activeTrackColor: context.scheme.primary,
          inactiveTrackColor: enabled
              ? context.scheme.surfaceContainerHighest
              : context.scheme.surfaceContainerLow,
          thumbColor: WidgetStateProperty.resolveWith(
            (states) {
              // Selected
              if (states.contains(WidgetState.selected)) {
                return context.scheme.onPrimary;
              }
              if (states.contains(WidgetState.disabled)) {
                return context.scheme.outline;
              }
              return context.scheme.outline;
            },
          ),
        ),
      ),
      onPreferenceClick: () => onCheckedChanged(!checked),
      enabled: enabled,
    );
  }
}
