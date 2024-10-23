import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

class PreferenceGroupHeader extends StatelessWidget {
  const PreferenceGroupHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.only(bottom: 8.0, top: 14.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Text(
          title,
          style: context.text.bodyMedium?.copyWith(
            color: context.scheme.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
