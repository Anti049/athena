import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  final navigationItems = [
    const HomeNavigationItem(
      icon: Symbols.collections_bookmark,
      label: 'labelLibrary',
      route: '/library',
    ),
    const HomeNavigationItem(
      icon: Symbols.release_alert,
      label: 'labelUpdates',
      route: '/updates',
    ),
    const HomeNavigationItem(
      icon: Symbols.history,
      label: 'labelHistory',
      route: '/history',
    ),
    const HomeNavigationItem(
      icon: Symbols.explore,
      label: 'labelBrowse',
      route: '/browse',
    ),
    const HomeNavigationItem(
      icon: Symbols.more_horiz,
      label: 'labelMore',
      route: '/more',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            child: child,
          );
        },
        child: widget.child,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          context.push(navigationItems[index].route);
        },
        destinations: navigationItems
            .asMap()
            .entries
            .map(
              (entry) => entry.value.toDestination(
                index: entry.key,
              ),
            )
            .toList(),
      ),
    );
  }
}
