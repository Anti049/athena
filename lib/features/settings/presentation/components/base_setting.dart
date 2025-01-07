import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class BaseSettingWidget extends StatelessWidget {
  const BaseSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.subcomponent,
    this.icon,
    this.onClick,
    this.widget,
    this.enabled = true,
    this.widgetLeading = false,
    this.dense = false,
  });
  final String? title;
  final String? subtitle;
  final Widget? subcomponent;
  final Widget? icon;
  final VoidCallback? onClick;
  final Widget? widget;
  final bool enabled;
  final bool widgetLeading;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widgetLeading ? widget : icon,
      tileColor: Colors.transparent,
      title: title.isNotNullOrBlank
          ? Text(
              title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          : null,
      subtitle: subtitle.isNotNullOrBlank
          ? Text(
              subtitle!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          : subcomponent,
      trailing: subtitle.isNullOrBlank
          ? (widgetLeading ? icon : widget)
          : subcomponent,
      onTap: onClick,
      enabled: enabled,
      horizontalTitleGap: widgetLeading ? 16.0 : 24.0,
      dense: dense,
      isThreeLine: subtitle.isNotNullOrBlank,
    );
  }
}

const trailingWidgetBuffer = 16.0;
const prefsHorizontalPadding = 16.0;
const prefsVerticalPadding = 16.0;
const titleFontSize = 16.0;
