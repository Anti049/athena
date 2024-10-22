import 'package:athena/features/settings/presentation/components/base_preference_widget.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class TextPreferenceWidget extends StatelessWidget {
  const TextPreferenceWidget({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconTint,
    this.widget,
    this.onPreferenceClick,
    this.enabled = true,
    this.widgetLeading = false,
    this.forceIcon = false,
    this.style,
    this.dense = false,
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color? iconTint;
  final Widget? widget;
  final VoidCallback? onPreferenceClick;
  final bool enabled;
  final bool widgetLeading;
  final bool forceIcon;
  final TextStyle? style;
  final bool dense;

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
                style: context.textTheme.bodySmall,
                maxLines: 10,
              ),
            )
          : null,
      icon: icon != null || forceIcon
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
      widgetLeading: widgetLeading,
      style: style,
      dense: dense,
    );
  }
}
