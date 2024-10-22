// Primary imports
import 'package:animations/animations.dart';
import 'package:athena/features/theme/presentation/theme_selection_screen.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// Utilities
import 'package:athena/features/error/error_screen.dart';

// Navigation keys
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
            CustomRoute(
              path: 'library',
              page: LibraryRoute.page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
            ),
            CustomRoute(
              path: 'updates',
              page: UpdatesRoute.page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
            ),
            CustomRoute(
              path: 'history',
              page: HistoryRoute.page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
            ),
            CustomRoute(
              path: 'browse',
              page: BrowseRoute.page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
            ),
            CustomRoute(
              path: 'more',
              page: MoreRoute.page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
            ),
          ],
        ),
        CustomRoute(
          path: '/settings',
          page: SettingsRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
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
