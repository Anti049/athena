// Primary imports
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
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
              title: (context, data) => context.locale.labelLibrary,
              path: 'library',
              page: LibraryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelUpdates,
              path: 'updates',
              page: UpdatesRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelHistory,
              path: 'history',
              page: HistoryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelBrowse,
              path: 'browse',
              page: BrowseRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelMore,
              path: 'more',
              page: MoreRoute.page,
            ),
          ],
        ),
        AutoRoute(
          title: (context, data) => context.locale.labelSettings,
          path: '/settings',
          page: SettingsRoute.page,
        ),
        // More -> Settings - > Appearance
        AutoRoute(
          title: (context, data) =>
              context.locale.preferenceCategoryAppearance.header,
          path: '/settings/appearance',
          page: AppearanceSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.preferenceTheme.header,
          path: '/settings/appearance/theme',
          page: ThemeSelectionRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.preferenceLanguage.header,
          path: '/settings/appearance/language',
          page: LanguageSelectionRoute.page,
        ),
        // More -> Settings - > Library
        AutoRoute(
          title: (context, data) =>
              context.locale.preferenceCategoryLibrary.header,
          path: '/settings/library',
          page: LibrarySettingsRoute.page,
        ),
        // More -> Settings -> Notifications
        AutoRoute(
          title: (context, data) =>
              context.locale.preferenceCategoryNotifications.header,
          path: '/settings/notifications',
          page: NotificationSettingsRoute.page,
        ),
        // More -> About | More -> Settings -> About
        AutoRoute(
          title: (context, data) => context.locale.preferenceCategoryAbout,
          path: '/about',
          page: AboutRoute.page,
        ),
      ];
}
