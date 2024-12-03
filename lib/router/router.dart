import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|Tab,Route')
class AthenaRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: MainRoute.page,
          children: [
            AutoRoute(
              title: (context, data) => context.locale.library,
              path: 'library',
              page: LibraryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.updates,
              path: 'updates',
              page: UpdatesRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.history,
              path: 'history',
              page: HistoryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.browse,
              path: 'browse',
              page: BrowseRoute.page,
              children: [
                AutoRoute(
                  title: (context, data) => context.locale.sources,
                  path: 'sources',
                  page: SourcesRoute.page,
                ),
                AutoRoute(
                  title: (context, data) => context.locale.extensions,
                  path: 'extensions',
                  page: ExtensionsRoute.page,
                ),
                AutoRoute(
                  title: (context, data) => context.locale.migrate,
                  path: 'migrate',
                  page: MigrateRoute.page,
                )
              ],
            ),
            AutoRoute(
              title: (context, data) => context.locale.more,
              path: 'more',
              page: MoreRoute.page,
            ),
          ],
        ),
        AutoRoute(
          title: (context, data) => context.locale.settings,
          path: '/settings',
          page: SettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.appearance,
          path: '/settings/appearance',
          page: AppearanceSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.themes.title,
          path: '/settings/appearance/themes',
          page: ThemeSelectionRoute.page,
        )
      ];
}
