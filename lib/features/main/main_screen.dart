import 'package:athena/features/main/models/navigation_item.dart';
import 'package:athena/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String routeName = 'main';

  @override
  Widget build(BuildContext context) {
    const navigationItems = [
      NavigationItem(
        title: 'Library',
        route: LibraryRoute(),
        icon: Symbols.collections_bookmark,
      ),
      NavigationItem(
        title: 'Updates',
        route: UpdatesRoute(),
        icon: Symbols.release_alert,
      ),
      NavigationItem(
        title: 'History',
        route: HistoryRoute(),
        icon: Symbols.history,
      ),
      NavigationItem(
        title: 'Browse',
        route: BrowseRoute(),
        icon: Symbols.explore,
      ),
      NavigationItem(
        title: 'More',
        route: MoreRoute(),
        icon: Symbols.more_horiz,
      ),
    ];

    return AutoTabsRouter(
      routes: navigationItems.map((item) => item.route).toList(),
      builder: (context, child) {
        final router = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: router.activeIndex,
            onDestinationSelected: router.setActiveIndex,
            destinations: [
              ...navigationItems.map((item) => item.barDestination),
            ],
          ),
        );
      },
    );
  }
}
