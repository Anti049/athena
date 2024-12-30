import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class TagSection extends ConsumerWidget {
  const TagSection({
    super.key,
    required this.title,
    this.icon,
    this.includeTags,
    this.excludeTags,
    this.selectionRoute,
  });

  final String title;
  final IconData? icon;
  final List<String>? includeTags;
  final List<String>? excludeTags;
  final PageRouteInfo? selectionRoute;

  bool showTags(List<String>? tags) {
    return tags != null && tags.isNotEmpty;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: icon != null ? Icon(icon) : null,
      title: Text(
        title,
        style: context.text.titleMedium,
      ),
      subtitle: Row(
        children: [
          if (showTags(includeTags)) ...[
            Text(
              '+${includeTags?.length}',
              style: context.text.bodyMedium?.copyWith(
                color: context.extended.success,
              ),
            ),
            const SizedBox(width: 8.0),
          ],
          if (showTags(excludeTags))
            Text(
              '-${excludeTags?.length}',
              style: context.text.bodyMedium?.copyWith(
                color: context.scheme.error,
              ),
            ),
        ],
      ),
      trailing: const Icon(Symbols.arrow_forward),
      onTap: () {
        if (selectionRoute != null) {
          AutoRouter.of(context).push(selectionRoute!);
        }
      },
    );
  }
}
