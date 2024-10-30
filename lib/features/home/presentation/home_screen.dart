import 'package:athena/features/home/presentation/home_navigation.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:athena/utils/theming.dart';
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
    final routes = [
      const LibraryRoute(),
      const UpdatesRoute(),
      const HistoryRoute(),
      const BrowseRoute(),
      const MoreRoute(),
    ];
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

    return AutoTabsRouter(
      routes: routes,
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: Row(
            children: [
              if (context.atLeastMedium && !context.atLeastLarge)
                NavigationRail(
                  backgroundColor: context.scheme.surfaceContainer,
                  labelType: NavigationRailLabelType.all,
                  selectedIndex: tabsRouter.activeIndex,
                  onDestinationSelected: tabsRouter.setActiveIndex,
                  destinations: navigationItems
                      .map(
                        (item) => NavigationRailDestination(
                          icon: Icon(item.icon),
                          selectedIcon: Icon(item.icon, fill: 1.0),
                          label: Text(item.label),
                        ),
                      )
                      .toList(),
                ),
              if (context.atLeastLarge)
                Container(
                  color: context.scheme.surfaceContainerLow,
                  child: NavigationDrawer(
                    tilePadding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    selectedIndex: tabsRouter.activeIndex,
                    onDestinationSelected: tabsRouter.setActiveIndex,
                    children: [
                      // Header
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          28.0,
                          16.0,
                          16.0,
                          10.0,
                        ),
                        child: Text(
                          context.locale.appTitle,
                          style: context.text.titleSmall,
                        ),
                      ),
                      // Destinations
                      ...navigationItems.map(
                        (item) => NavigationDrawerDestination(
                          icon: Icon(item.icon),
                          selectedIcon: Icon(item.icon, fill: 1.0),
                          label: Text(item.label),
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: child,
              ),
            ],
          ),
          bottomNavigationBar: context.isCompact
              ? NavigationBar(
                  selectedIndex: tabsRouter.activeIndex,
                  onDestinationSelected: tabsRouter.setActiveIndex,
                  destinations: navigationItems
                      .map(
                        (item) => item.toDestination(
                          index: navigationItems.indexOf(item),
                        ),
                      )
                      .toList(),
                )
              : null,
        );
      },
    );
  }
}
