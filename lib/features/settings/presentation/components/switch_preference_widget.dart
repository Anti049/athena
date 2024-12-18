import 'package:athena/features/settings/presentation/components/base_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/text_preference_widget.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

class SwitchPreferenceWidget extends StatelessWidget {
  const SwitchPreferenceWidget({
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
    return TextPreferenceWidget(
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
