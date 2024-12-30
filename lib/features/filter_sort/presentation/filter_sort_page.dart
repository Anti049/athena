import 'package:athena/common/models/screen_tab.dart';
import 'package:athena/common/presentation/padded_app_bar.dart';
import 'package:athena/features/banners/presentation/components/banner_scaffold.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class FilterSortPage extends ConsumerWidget {
  const FilterSortPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);

    final tabItems = [
      ScreenTab(
        title: context.locale.pages.library.tags.title,
        route: const TagsRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.save),
            onPressed: () {},
            tooltip: 'Save Preset',
          ),
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {},
            tooltip: 'Reset Tags',
          ),
          // IconButton(
          //   icon: const Icon(Symbols.edit),
          //   onPressed: () {},
          //   tooltip: 'Edit Presets',
          // ),
        ],
      ),
      ScreenTab(
        title: context.locale.pages.library.filters.title,
        route: const FiltersRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              preferences.resetFilters();
            },
            tooltip: 'Reset Filters',
          ),
        ],
      ),
      ScreenTab(
        title: context.locale.pages.library.sort.title,
        route: const SortRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              preferences.resetSort();
            },
            tooltip: 'Reset Sort',
          ),
        ],
      ),
      ScreenTab(
        title: context.locale.pages.library.display.title,
        route: const DisplayRoute(),
        actions: [
          IconButton(
            icon: const Icon(Symbols.refresh),
            onPressed: () {
              preferences.resetDisplay();
            },
            tooltip: 'Reset Display',
          ),
        ],
      ),
    ];

    return AutoTabsRouter.tabBar(
      routes: tabItems.map((item) => item.route).toList(),
      builder: (context, child, controller) {
        final router = AutoTabsRouter.of(context);

        return BannerScaffold(
          appBar: PaddedAppBar(
            title: Text(context.locale.pages.library.options.title),
            actions: tabItems[router.activeIndex].actions,
            bottom: TabBar(
              controller: controller,
              tabs: tabItems.map((item) => item.tab).toList(),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
