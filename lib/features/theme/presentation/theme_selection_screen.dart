import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/common_widgets/banner_scaffold.dart';
import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/application/preference.dart';
import 'package:athena/features/theme/data/prebuilt_themes.dart';
import 'package:athena/features/theme/domain/base_theme.dart';
import 'package:athena/features/theme/presentation/theme_section.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class ThemeSelectionScreen extends ConsumerStatefulWidget {
  const ThemeSelectionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ThemeSelectionScreenState();
}

class _ThemeSelectionScreenState extends ConsumerState<ThemeSelectionScreen> {
  Map<ThemeCategory, bool> expandedCategories = {};
  bool expandAll = false;

  @override
  void initState() {
    super.initState();

    for (final category in ThemeCategory.values) {
      expandedCategories[category] = false;
    }
  }

  List<BaseTheme?> getThemesByCategory(ThemeCategory category) {
    // Filter out null themes and group by category
    final themes = prebuiltThemes.values
        .where((theme) => theme != null && theme.category == category)
        .toList();
    // Sort themes by name
    themes.sort((a, b) => a!.name.compareTo(b!.name));
    // Return the sorted themes
    return themes;
  }

  Map<ThemeCategory, List<BaseTheme?>> getThemesByCategoryMap() {
    final themesByCategory = <ThemeCategory, List<BaseTheme?>>{};
    for (final category in ThemeCategory.values) {
      themesByCategory[category] = getThemesByCategory(category);
    }
    return themesByCategory;
  }

  bool isCategorySelected(ThemeCategory category, String themeName) {
    final selectedTheme = prebuiltThemes[themeName];
    return selectedTheme?.category == category;
  }

  void expandContractCategory(ThemeCategory category) {
    setState(() {
      expandedCategories[category] = !expandedCategories[category]!;
      expandAll = expandedCategories.values.every((e) => e);
    });
  }

  void expandContractAll(bool expand) {
    setState(() {
      for (final category in ThemeCategory.values) {
        expandedCategories[category] = expand;
      }
      expandAll = expand;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(appearancePreferencesProvider).themeMode();
    final themeName = ref.watch(appearancePreferencesProvider).themeName();
    final categorizedThemes = getThemesByCategoryMap();

    return BannerScaffold(
      appBar: AppBar(
        title: Text(
          context.locale.preferenceTheme.header,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            for (final category in categorizedThemes.keys)
              if (categorizedThemes[category]!.isNotEmpty)
                Column(
                  children: [
                    ListTile(
                      title: Text(
                        category.name,
                      ),
                      subtitle: Text(
                        context.locale.preferenceTheme.count(
                          categorizedThemes[category]!.length,
                        ),
                      ),
                      tileColor: expandedCategories[category]!
                          ? context.scheme.surfaceContainerHigh
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(8.0),
                          topRight: const Radius.circular(8.0),
                          bottomLeft: Radius.circular(
                            expandedCategories[category]! ? 0.0 : 8.0,
                          ),
                          bottomRight: Radius.circular(
                            expandedCategories[category]! ? 0.0 : 8.0,
                          ),
                        ),
                      ),
                      enabled: categorizedThemes[category]?.isNotEmpty ?? false,
                      leading: Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: isCategorySelected(category, themeName.get())
                              ? context.scheme.primary
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(256.0),
                        ),
                        child: Icon(
                          Symbols.check,
                          color: isCategorySelected(category, themeName.get())
                              ? context.scheme.onPrimary
                              : Colors.transparent,
                          size: 16.0,
                        ),
                      ),
                      trailing: Icon(
                        expandedCategories[category]!
                            ? Symbols.keyboard_arrow_up
                            : Symbols.keyboard_arrow_down,
                      ),
                      onTap: () {
                        expandContractCategory(category);
                      },
                    ),
                    AnimatedVisibility(
                      visible: expandedCategories[category] ?? false,
                      enter: expandVertically(
                        curve: Curves.fastEaseInToSlowEaseOut,
                      ),
                      enterDuration: const Duration(milliseconds: 200),
                      exit: shrinkVertically(
                        curve: Curves.fastEaseInToSlowEaseOut,
                      ),
                      exitDuration: const Duration(milliseconds: 200),
                      child: ThemeSection(
                        title: category.name,
                        themes: categorizedThemes[category]!,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: context.scheme.surfaceContainerLow,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                themeMode.cycle(ThemeMode.values);
              },
              icon: Icon(
                switch (themeMode.get()) {
                  ThemeMode.system => Symbols.brightness_auto,
                  ThemeMode.light => Symbols.brightness_high,
                  ThemeMode.dark => Symbols.brightness_low,
                },
              ),
            ),
            const SizedBox(width: 4.0),
            IconButton(
              onPressed: () {
                expandContractAll(!expandAll);
              },
              icon: Icon(
                expandAll ? Symbols.collapse_all : Symbols.expand_all,
              ),
            ),
            const SizedBox(width: 4.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Symbols.square,
              ),
            ),
            const SizedBox(width: 4.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Symbols.pentagon,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        onPressed: () {},
        child: const Icon(
          Symbols.add,
          fill: 1.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
