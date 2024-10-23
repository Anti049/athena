import 'package:athena/presentation/more/settings/components/base_preference_widget.dart';
import 'package:athena/utils/theming.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class PreferenceText extends StatelessWidget {
  const PreferenceText({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconTint,
    this.widget,
    this.onPreferenceClick,
    this.enabled = true,
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color? iconTint;
  final Widget? widget;
  final VoidCallback? onPreferenceClick;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return BasePreferenceWidget(
      title: title,
      subcomponent: subtitle.isNotNullOrBlank
          ? Opacity(
              opacity: enabled
                  ? 0.78
                  : 0.5, // TODO: Handle material constants (reference flutteryomi)
              child: Text(
                subtitle!,
                style: context.text.bodySmall,
                maxLines: 10,
              ),
            )
          : null,
      icon: icon != null
          ? Icon(
              icon,
              color: enabled
                  ? iconTint ?? context.scheme.primary
                  : context.scheme.onSurfaceVariant,
            )
          : null,
      onClick: onPreferenceClick,
      widget: widget,
      enabled: enabled,
    );
  }
}
