import 'package:athena/features/error/error_screen.dart';
import 'package:athena/features/theme/presentation/theme_selection_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:athena/presentation/home/components/shell_navigation.dart';
import 'package:athena/presentation/home/home.dart';
import 'package:athena/presentation/library/library.dart';
import 'package:athena/presentation/updates/updates.dart';
import 'package:athena/presentation/history/history.dart';
import 'package:athena/presentation/browse/browse.dart';
import 'package:athena/presentation/more/more.dart';
import 'package:athena/presentation/more/settings/settings.dart';

// Navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _libraryNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'LibraryNavigator');
final _updatesNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'UpdatesNavigator');
final _historyNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'HistoryNavigator');
final _browseNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'BrowseNavigator');
final _moreNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'MoreNavigator');

// GoRouter configuration
final goRouter = GoRouter(
  initialLocation: '/library',
  navigatorKey: _rootNavigatorKey,
  routes: [
    // Home
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ShellNavigation(navigationShell: navigationShell);
      },
      branches: [
        // Library
        StatefulShellBranch(
          navigatorKey: _libraryNavigatorKey,
          routes: [
            // Top route
            GoRoute(
              path: '/library',
              builder: (context, state) => const LibraryTab(),
            ),
            // Category subroute
            GoRoute(
              path: '/library/:category',
              builder: (context, state) =>
                  LibraryTab(category: state.pathParameters['category']),
            ),
          ],
        ),
        // Updates
        StatefulShellBranch(
          navigatorKey: _updatesNavigatorKey,
          routes: [
            // Top route
            GoRoute(
              path: '/updates',
              builder: (context, state) => const UpdatesTab(),
            ),
          ],
        ),
        // History
        StatefulShellBranch(
          navigatorKey: _historyNavigatorKey,
          routes: [
            // Top route
            GoRoute(
              path: '/history',
              builder: (context, state) => const HistoryTab(),
            ),
          ],
        ),
        // Browse
        StatefulShellBranch(
          navigatorKey: _browseNavigatorKey,
          routes: [
            // Top route
            GoRoute(
              path: '/browse',
              builder: (context, state) => const BrowseTab(),
            ),
          ],
        ),
        // More
        StatefulShellBranch(
          navigatorKey: _moreNavigatorKey,
          routes: [
            // Top route
            GoRoute(
              path: '/more',
              builder: (context, state) => const MoreTab(),
            ),
          ],
        ),
      ],
    ),
    // Settings
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(
    message: state.error.toString(),
  ),
);
