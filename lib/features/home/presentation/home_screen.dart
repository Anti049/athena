import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeNavigationItem {
  const HomeNavigationItem({
    required this.icon,
    required this.label,
    required this.route,
  });

  final IconData icon;
  final String label;
  final String route;

  NavigationDestination toDestination({
    required int index,
  }) {
    return NavigationDestination(
      icon: Icon(
        icon,
        fill: 0.0,
      ),
      selectedIcon: Icon(
        icon,
        fill: 1.0,
      ),
      label: label,
    );
  }
}

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationItems = [
      HomeNavigationItem(
        icon: Symbols.collections_bookmark,
        label: context.locale.labelLibrary,
        route: '/library',
      ),
      HomeNavigationItem(
        icon: Symbols.release_alert,
        label: context.locale.labelUpdates,
        route: '/updates',
      ),
      HomeNavigationItem(
        icon: Symbols.history,
        label: context.locale.labelHistory,
        route: '/history',
      ),
      HomeNavigationItem(
        icon: Symbols.explore,
        label: context.locale.labelBrowse,
        route: '/browse',
      ),
      HomeNavigationItem(
        icon: Symbols.more_horiz,
        label: context.locale.labelMore,
        route: '/more',
      ),
    ];
    return AutoTabsScaffold(
      routes: const [
        LibraryRoute(),
        UpdatesRoute(),
        HistoryRoute(),
        BrowseRoute(),
        MoreRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: navigationItems
              .map(
                (item) =>
                    item.toDestination(index: navigationItems.indexOf(item)),
              )
              .toList(),
        );
      },
    );
  }
}
