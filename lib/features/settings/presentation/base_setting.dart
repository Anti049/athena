import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class BaseSettingWidget extends StatelessWidget {
  const BaseSettingWidget({
    super.key,
    this.title,
    this.subcomponent,
    this.icon,
    this.onClick,
    this.widget,
    this.enabled = true,
  });
  final String? title;
  final Widget? subcomponent;
  final Widget? icon;
  final VoidCallback? onClick;
  final Widget? widget;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: title.isNotNullOrBlank
          ? Text(
              title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          : null,
      trailing: widget,
      subtitle: subcomponent,
      onTap: onClick,
      enabled: enabled,
      horizontalTitleGap: prefsHorizontalPadding,
    );
  }
}

const trailingWidgetBuffer = 16.0;
const prefsHorizontalPadding = 16.0;
const prefsVerticalPadding = 16.0;
const titleFontSize = 16.0;
