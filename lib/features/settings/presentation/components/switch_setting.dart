import 'package:athena/features/settings/presentation/components/base_setting.dart';
import 'package:athena/features/settings/presentation/components/text_setting.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

class SwitchSettingWidget extends StatelessWidget {
  const SwitchSettingWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    required this.checked,
    required this.onChanged,
    this.enabled = true,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final bool checked;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextSettingWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      onSettingClick: enabled ? () => onChanged(!checked) : null,
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
              if (states.contains(WidgetState.selected) && enabled) {
                return context.scheme.onPrimary;
              }
              if (states.contains(WidgetState.disabled) || !enabled) {
                return context.scheme.outline;
              }
              return context.scheme.outline;
            },
          ),
        ),
      ),
      enabled: enabled,
    );
  }
}
