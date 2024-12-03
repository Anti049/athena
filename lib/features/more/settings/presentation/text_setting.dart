import 'package:athena/features/more/settings/presentation/base_setting.dart';
import 'package:athena/utils/theming.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class TextSettingWidget extends StatelessWidget {
  const TextSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconTint,
    this.widget,
    this.onSettingClick,
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
  final VoidCallback? onSettingClick;
  final bool enabled;
  final bool widgetLeading;
  final bool forceIcon;
  final TextStyle? style;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    return BaseSettingWidget(
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
      icon: icon != null || forceIcon
          ? Icon(
              icon,
              color: enabled
                  ? iconTint ?? context.scheme.primary
                  : context.scheme.onSurfaceVariant,
            )
          : null,
      onClick: onSettingClick,
      widget: widget,
    );
  }
}
