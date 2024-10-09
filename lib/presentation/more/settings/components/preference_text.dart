import 'package:athena/presentation/more/settings/components/base_preference_widget.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
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
  });

  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color? iconTint;
  final Widget? widget;
  final VoidCallback? onPreferenceClick;

  @override
  Widget build(BuildContext context) {
    return BasePreferenceWidget(
      title: title,
      subcomponent: subtitle.isNotNullOrBlank
          ? Opacity(
              opacity:
                  0.78, // TODO: Handle material constants (reference flutteryomi)
              child: Text(
                subtitle!,
                style: context.textTheme.bodySmall,
                maxLines: 10,
              ),
            )
          : null,
      icon: icon != null
          ? Icon(
              icon,
              color: iconTint ?? context.scheme.primary,
            )
          : null,
      onClick: onPreferenceClick,
      widget: widget,
    );
  }
}
