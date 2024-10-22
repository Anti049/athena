import 'package:animated_visibility/animated_visibility.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

// ignore: constant_identifier_names
const BANNER_HEIGHT = 24.0;

class BannerData {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final TextStyle? textStyle;
  final bool visible;
  final double height;

  BannerData({
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    this.textStyle,
    required this.visible,
    this.height = BANNER_HEIGHT,
  });

  BannerWidget toWidget({
    bool top = false,
  }) {
    return BannerWidget(
      label: label,
      backgroundColor: backgroundColor,
      textColor: textColor,
      textStyle: textStyle,
      top: top,
      height: height,
      visible: visible,
    );
  }
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
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final TextStyle? textStyle;
  final bool top;
  final double height;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final labelStyle = textStyle ?? context.textTheme.labelMedium;
    // Banner widget
    return AnimatedVisibility(
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
              height: height,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  label,
                  style: labelStyle?.copyWith(
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
