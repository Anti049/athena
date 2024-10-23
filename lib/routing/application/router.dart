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
          page: HomeRoute.page,
          children: [
            AutoRoute(
              title: (context, data) => context.locale.labelLibrary,
              page: LibraryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelUpdates,
              page: UpdatesRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelHistory,
              page: HistoryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelBrowse,
              page: BrowseRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.labelMore,
              page: MoreRoute.page,
            ),
          ],
        ),
        AutoRoute(
          title: (context, data) => context.locale.labelSettings,
          page: SettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.preferenceCategoryAppearance.header,
          page: SettingsAppearanceRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.preferenceTheme.header,
          page: ThemeSelectionRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.preferenceLanguage.header,
          page: LanguageSelectionRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.preferenceCategoryAbout,
          page: AboutRoute.page,
        ),
      ];
}
