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
  final PageRouteInfo route;

  Icon get unselectedIcon => Icon(icon, fill: 0.0);
  Icon get selectedIcon => Icon(icon, fill: 1.0);

  NavigationDestination toBarDestination() {
    return NavigationDestination(
      icon: unselectedIcon,
      selectedIcon: selectedIcon,
      label: label,
    );
  }

  NavigationRailDestination toRailDestination() {
    return NavigationRailDestination(
      icon: unselectedIcon,
      selectedIcon: selectedIcon,
      label: Text(label),
    );
  }

  NavigationDrawerDestination toDrawerDestination() {
    return NavigationDrawerDestination(
      icon: unselectedIcon,
      selectedIcon: selectedIcon,
      label: Text(label),
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
        label: context.locale.page.library.title,
        route: const LibraryRoute(),
      ),
      HomeNavigationItem(
        icon: Symbols.release_alert,
        label: context.locale.page.updates.title,
        route: const UpdatesRoute(),
      ),
      HomeNavigationItem(
        icon: Symbols.history,
        label: context.locale.page.history.title,
        route: const HistoryRoute(),
      ),
      HomeNavigationItem(
        icon: Symbols.explore,
        label: context.locale.page.browse.title,
        route: const BrowseRoute(),
      ),
      HomeNavigationItem(
        icon: Symbols.more_horiz,
        label: context.locale.page.more.title,
        route: const MoreRoute(),
      ),
    ];

    return AutoTabsRouter(
      routes: navigationItems.map((item) => item.route).toList(),
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
                  destinations: [
                    ...navigationItems.map((item) => item.toRailDestination()),
                  ],
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
                        (item) => item.toDrawerDestination(),
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
                  destinations: [
                    ...navigationItems.map((item) => item.toBarDestination()),
                  ],
                )
              : null,
        );
      },
    );
  }
}
