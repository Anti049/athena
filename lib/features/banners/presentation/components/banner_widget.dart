import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/widgets.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.visible,
    required this.isTopmost,
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final bool visible;
  final bool isTopmost;

  @override
  Widget build(BuildContext context) {
    // Banner variables
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bannerHeight = 32.0 + (isTopmost ? statusBarHeight : 0.0);
    // Banner widget
    return AnimatedVisibility(
      visible: visible,
      enter: expandVertically(),
      enterDuration: const Duration(milliseconds: 200),
      exit: shrinkVertically(),
      exitDuration: const Duration(milliseconds: 200),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        constraints: BoxConstraints(
          minHeight: bannerHeight,
        ),
        color: backgroundColor,
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                label,
                style: context.text.labelMedium?.copyWith(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
