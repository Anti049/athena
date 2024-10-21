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
  });

  final String? title;
  final Widget? subcomponent;
  final Widget? icon;
  final VoidCallback? onClick;
  final bool enabled;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    // TODO: Highlight animation (ported from flutteryomi)
    return ListTile(
      leading: icon,
      tileColor: Colors.transparent,
      title: title.isNotNullOrBlank
          ? Text(
              title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          : null,
      subtitle: subcomponent,
      trailing: widget,
      onTap: onClick,
      horizontalTitleGap: 24.0,
      enabled: enabled,
    );
  }
}

const trailingWidgetBuffer = 16.0;
const prefsHorizontalPadding = 16.0;
const prefsVerticalPadding = 16.0;
const titleFontSize = 16.0;
