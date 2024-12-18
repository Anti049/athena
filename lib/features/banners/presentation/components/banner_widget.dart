import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const BANNER_HEIGHT = 24.0;

enum WidgetLocation {
  top,
  bottom,
  left,
  right,
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    this.textStyle,
    this.top = false,
    this.height = BANNER_HEIGHT,
    this.visible = false,
    this.topWidget,
    this.bottomWidget,
    this.leftWidget,
    this.rightWidget,
    this.dismiss,
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final TextStyle? textStyle;
  final bool top;
  final double height;
  final bool visible;
  final Widget? topWidget;
  final Widget? bottomWidget;
  final Widget? leftWidget;
  final Widget? rightWidget;
  final void Function()? dismiss;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final labelStyle = textStyle ?? context.text.labelMedium;
    // Banner widget
    return GestureDetector(
      onTap: dismiss,
      child: AnimatedVisibility(
        visible: visible,
        enter: expandVertically(),
        enterDuration: const Duration(milliseconds: 200),
        exit: shrinkVertically(),
        exitDuration: const Duration(milliseconds: 200),
        child: Container(
          width: double.infinity,
          color: backgroundColor,
          child: Column(
            children: [
              AnimatedVisibility(
                visible: top,
                enter: expandVertically(),
                enterDuration: const Duration(milliseconds: 200),
                exit: shrinkVertically(),
                exitDuration: const Duration(milliseconds: 200),
                child: SizedBox(
                  height: statusBarHeight,
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: height,
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (topWidget != null) topWidget!,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (leftWidget != null) ...[
                            leftWidget!,
                            const SizedBox(width: 16.0),
                          ],
                          Text(
                            label,
                            style: labelStyle?.copyWith(
                              color: textColor,
                            ),
                          ),
                          if (rightWidget != null) ...[
                            const SizedBox(width: 16.0),
                            rightWidget!,
                          ],
                        ],
                      ),
                      if (bottomWidget != null) bottomWidget!,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
