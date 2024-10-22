import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class BasePreferenceWidget extends StatelessWidget {
  const BasePreferenceWidget({
    super.key,
    this.title,
    this.subcomponent,
    this.icon,
    this.onClick,
    this.enabled = true,
    this.widget,
    this.widgetLeading = false,
    this.style,
    this.dense = false,
  });

  final String? title;
  final Widget? subcomponent;
  final Widget? icon;
  final VoidCallback? onClick;
  final bool enabled;
  final Widget? widget;
  final bool widgetLeading;
  final TextStyle? style;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    // TODO: Highlight animation (ported from flutteryomi)
    return ListTile(
      leading: widgetLeading ? widget : icon,
      tileColor: Colors.transparent,
      title: title.isNotNullOrBlank
          ? Text(
              title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: style,
            )
          : null,
      subtitle: subcomponent,
      trailing: widgetLeading ? icon : widget,
      onTap: onClick,
      horizontalTitleGap: widgetLeading ? 16.0 : 24.0,
      enabled: enabled,
      dense: dense,
    );
  }
}

const trailingWidgetBuffer = 16.0;
const prefsHorizontalPadding = 16.0;
const prefsVerticalPadding = 16.0;
const titleFontSize = 16.0;
