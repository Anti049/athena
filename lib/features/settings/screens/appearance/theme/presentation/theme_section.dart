import 'package:athena/features/settings/screens/appearance/theme/model/theme.dart';
import 'package:athena/features/settings/screens/appearance/theme/presentation/theme_preview.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class ThemeSection extends StatelessWidget {
  const ThemeSection({
    super.key,
    required this.title,
    required this.themes,
  });

  final String title;
  final List<AppTheme> themes;

  @override
  Widget build(BuildContext context) {
    final columns = context.isCompact
        ? 3
        : context.isMedium
            ? 4
            : context.isExpanded
                ? 4
                : context.isLarge
                    ? 5
                    : 6;
    final rows = (themes.length / columns).ceil().coerceAtLeast(1);

    return themes.isNotEmpty
        ? Container(
            // Rounded bottom corners
            decoration: BoxDecoration(
              color: context.scheme.surfaceContainer,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                left: 12.0,
                right: 12.0,
                bottom: 8.0,
              ),
              child: LayoutGrid(
                columnSizes: List.filled(columns, 1.fr),
                columnGap: 4.0,
                rowSizes: List.filled(rows, auto),
                rowGap: 4.0,
                children: [
                  for (final theme in themes)
                    ThemePreview(
                      theme: theme,
                    ),
                ],
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
