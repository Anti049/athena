// Primary imports
import 'package:athena/features/theme/presentation/theme_selection_screen.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// Utilities
import 'package:athena/features/error/error_screen.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|Tab,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        // Routes
        AutoRoute(
          initial: true,
          path: '/',
          page: HomeRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'library'),
            AutoRoute(
              path: 'library',
              page: LibraryRoute.page,
            ),
            AutoRoute(
              path: 'updates',
              page: UpdatesRoute.page,
            ),
            AutoRoute(
              path: 'history',
              page: HistoryRoute.page,
            ),
            AutoRoute(
              path: 'browse',
              page: BrowseRoute.page,
            ),
            AutoRoute(
              path: 'more',
              page: MoreRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/settings',
          page: SettingsRoute.page,
        ),
        AutoRoute(
          path: '/appearance',
          page: SettingsAppearanceRoute.page,
        ),
        AutoRoute(
          path: '/theme-selection',
          page: ThemeSelectionRoute.page,
        ),
      ];
}
