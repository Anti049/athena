import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:flutter/cupertino.dart';

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
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.scheme.secondary,
          ),
        ),
      ),
    );
  }
}
