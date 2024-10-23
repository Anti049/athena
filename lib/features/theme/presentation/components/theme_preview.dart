import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/theme/data/prebuilt_themes.dart';
import 'package:athena/features/theme/domain/base_theme.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ThemePreview extends ConsumerWidget {
  const ThemePreview({
    super.key,
    required this.theme,
  });

  final BaseTheme theme;

  Widget _buildAppBarPreview(
    BuildContext context,
    ColorScheme scheme,
    bool isSelected,
  ) {
    // Responsive values
    final appBarHeight = ResponsiveValue(
      context,
      conditionalValues: [
        const Condition.equals(name: COMPACT, value: 20.0),
        const Condition.equals(name: MEDIUM, value: 24.0),
      ],
      defaultValue: 36.0,
    ).value;

    // App bar
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: appBarHeight,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: appBarHeight,
              decoration: ShapeDecoration(
                color: scheme.onSurface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              decoration: ShapeDecoration(
                color: isSelected ? scheme.primary : Colors.transparent,
                shape: const CircleBorder(),
              ),
              alignment: Alignment.center,
              child: isSelected
                  ? Icon(
                      Symbols.check,
                      color: scheme.onPrimary,
                      weight: 800,
                      size: appBarHeight - 4,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCoverPreview(
    BuildContext context,
    ColorScheme scheme,
  ) {
    // Responsive values
    final labelSize = ResponsiveValue(
      context,
      conditionalValues: [
        const Condition.equals(
          name: COMPACT,
          value: 4.0,
        ),
      ],
      defaultValue: 8.0,
    ).value;

    // Cover
    return FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.6,
      child: Container(
        decoration: ShapeDecoration(
          color: scheme.surfaceContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        padding: const EdgeInsets.all(4.0),
        alignment: Alignment.topLeft,
        child: FractionallySizedBox(
          widthFactor: 0.625,
          heightFactor: 0.25,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: scheme.surfaceContainerHigh,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: scheme.secondary,
                    alignment: Alignment.center,
                    child: Container(
                      width: labelSize,
                      height: labelSize,
                      decoration: BoxDecoration(
                        color: scheme.onSecondary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: scheme.tertiary,
                    alignment: Alignment.center,
                    child: Container(
                      width: labelSize,
                      height: labelSize,
                      decoration: BoxDecoration(
                        color: scheme.onTertiary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationPreview(
    BuildContext context,
    ColorScheme scheme,
    bool isSelected,
  ) {
    // Responsive values

    final bottomNavigationHeight = ResponsiveValue(
      context,
      conditionalValues: [
        const Condition.equals(name: COMPACT, value: 32.0),
        const Condition.equals(name: MEDIUM, value: 40.0),
      ],
      defaultValue: 48.0,
    ).value;

    // Bottom Navigation
    return Container(
      height: bottomNavigationHeight,
      color: scheme.surfaceContainerHigh,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              decoration: ShapeDecoration(
                color: scheme.onSecondaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                color: scheme.onSurfaceVariant,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(appearancePreferencesProvider);
    final brightness =
        calculateBrightness(context, preferences.themeMode().get());
    final isSelected = preferences.themeName().get() == theme.name;
    ColorScheme scheme = theme.getColorScheme(brightness);
    final themeName = getThemeName(context, theme.name);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              preferences.themeName().set(theme.name);
            },
            child: AspectRatio(
              aspectRatio: 3 / 5,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: scheme.surface,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      width: 4,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: isSelected ? scheme.primary : scheme.outline,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Screen
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // App bar
                            _buildAppBarPreview(context, scheme, isSelected),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                ),
                                color: scheme.surface,
                                child: _buildCoverPreview(context, scheme),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Bottom Navigation
                    _buildBottomNavigationPreview(context, scheme, isSelected),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            themeName,
            textAlign: TextAlign.center,
            style: context.text.bodyLarge?.copyWith(
              color: isSelected ? scheme.primary : scheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
