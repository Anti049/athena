// Primary imports
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
            AutoRoute(
              title: (context, data) => context.locale.page.library.title,
              path: 'library',
              page: LibraryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.page.updates.title,
              path: 'updates',
              page: UpdatesRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.page.history.title,
              path: 'history',
              page: HistoryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.page.browse.title,
              path: 'browse',
              page: BrowseRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.page.more.title,
              path: 'more',
              page: MoreRoute.page,
            ),
          ],
        ),
        AutoRoute(
          title: (context, data) => context.locale.page.settings.title,
          path: '/settings',
          page: SettingsRoute.page,
        ),
        // More -> Settings - > Appearance
        AutoRoute(
          title: (context, data) =>
              context.locale.page.settings.appearance.title,
          path: '/settings/appearance',
          page: AppearanceSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.page.settings.appearance.theme,
          path: '/settings/appearance/theme',
          page: ThemeSelectionRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.page.settings.appearance.language,
          path: '/settings/appearance/language',
          page: LanguageSelectionRoute.page,
        ),
        // More -> Settings - > Library
        AutoRoute(
          title: (context, data) => context.locale.page.library.title,
          path: '/settings/library',
          page: LibrarySettingsRoute.page,
        ),
        // More -> Settings -> Reader
        // More -> Settings -> Downloads
        // More -> Settings -> Tracking
        // More -> Settings -> Browse
        // More -> Settings -> Notifications
        AutoRoute(
          title: (context, data) => context.locale.page.settings.notifications,
          path: '/settings/notifications',
          page: NotificationSettingsRoute.page,
        ),
        // More -> Settings -> Data & Storage
        AutoRoute(
          title: (context, data) => context.locale.page.settings.dataStorage,
          path: '/settings/storage',
          page: StorageSettingsRoute.page,
        ),
        // More -> Settings -> Security & Privacy
        // More -> Settings -> Advanced
        // More -> About | More -> Settings -> About
        AutoRoute(
          title: (context, data) => context.locale.more.about,
          path: '/about',
          page: AboutRoute.page,
        ),
      ];
}
