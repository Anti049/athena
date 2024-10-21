import 'package:athena/presentation/common_components/app_state_banners.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ShellNavigation extends StatelessWidget {
  const ShellNavigation({
    super.key = const ValueKey('ShellNavigation'),
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppStateBanners(),
          Expanded(
            child: navigationShell,
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
        destinations: [
          // Library
          NavigationDestination(
            icon: const Icon(
              Symbols.collections_bookmark,
            ),
            selectedIcon: const Icon(
              Symbols.collections_bookmark,
              fill: 1.0,
            ),
            label: context.locale.labelLibrary,
          ),
          // Updates
          NavigationDestination(
            icon: const Icon(
              Symbols.release_alert,
            ),
            selectedIcon: const Icon(
              Symbols.release_alert,
              fill: 1.0,
            ),
            label: context.locale.labelUpdates,
          ),
          // History
          NavigationDestination(
            icon: const Icon(
              Symbols.history,
            ),
            selectedIcon: const Icon(
              Symbols.history,
              fill: 1.0,
            ),
            label: context.locale.labelHistory,
          ),
          // Browse
          NavigationDestination(
            icon: const Icon(
              Symbols.explore,
            ),
            selectedIcon: const Icon(
              Symbols.explore,
              fill: 1.0,
            ),
            label: context.locale.labelBrowse,
          ),
          // More
          NavigationDestination(
            icon: const Icon(
              Symbols.more_horiz,
            ),
            selectedIcon: const Icon(
              Symbols.more_horiz,
              fill: 1.0,
            ),
            label: context.locale.labelMore,
          ),
        ],
      ),
    );
  }
}
