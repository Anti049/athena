import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

class SettingGroupHeader extends StatelessWidget {
  const SettingGroupHeader({
    super.key,
    required this.title,
    this.icon,
  });

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.only(bottom: 8.0, top: 14.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8.0),
                child: Icon(
                  icon,
                  color: context.scheme.secondary,
                  size: 16.0,
                ),
              ),
            Text(
              title,
              style: context.text.bodyMedium?.copyWith(
                color: context.scheme.secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
