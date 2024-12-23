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
              title: (context, data) => context.locale.pages.library.title,
              path: 'library',
              page: LibraryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.pages.updates.title,
              path: 'updates',
              page: UpdatesRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.pages.history.title,
              path: 'history',
              page: HistoryRoute.page,
            ),
            AutoRoute(
              title: (context, data) => context.locale.pages.browse.title,
              path: 'browse',
              page: BrowseRoute.page,
              children: [
                AutoRoute(
                  title: (context, data) =>
                      context.locale.pages.browse.sources.title,
                  path: 'sources',
                  page: SourcesRoute.page,
                ),
                AutoRoute(
                  title: (context, data) =>
                      context.locale.pages.browse.extensions.title,
                  path: 'extensions',
                  page: ExtensionsRoute.page,
                ),
                AutoRoute(
                  title: (context, data) =>
                      context.locale.pages.browse.migrate.title,
                  path: 'migrate',
                  page: MigrateRoute.page,
                )
              ],
            ),
            AutoRoute(
              title: (context, data) => context.locale.pages.more.title,
              path: 'more',
              page: MoreRoute.page,
            ),
          ],
        ),
        CustomRoute(
          title: (context, data) => context.locale.pages.filters.title,
          path: '/filters',
          page: FiltersRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          reverseDurationInMilliseconds: 200,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.more.downloadQueue.title,
          path: '/download-queue',
          page: DownloadQueueRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.pages.more.statistics.title,
          path: '/statistics',
          page: StatisticsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.pages.settings.title,
          path: '/settings',
          page: SettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.appearance.title,
          path: '/settings/appearance',
          page: AppearanceSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.themes.title,
          path: '/settings/appearance/themes',
          page: ThemeSelectionRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.pages.settings.library.title,
          path: '/settings/library',
          page: LibrarySettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.library.editCategories.title,
          path: '/settings/library/edit_categories',
          page: EditCategoriesRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.accounts.title,
          path: '/settings/accounts',
          page: AccountsSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.pages.settings.reader.title,
          path: '/settings/reader',
          page: ReaderSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.downloads.title,
          path: '/settings/downloads',
          page: DownloadsSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.tracking.title,
          path: '/settings/tracking',
          page: TrackingSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) => context.locale.pages.settings.browse.title,
          path: '/settings/browse',
          page: BrowseSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.notifications.title,
          path: '/settings/notifications',
          page: NotificationsSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.dataStorage.title,
          path: '/settings/dataStorage',
          page: DataStorageSettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.securityPrivacy.title,
          path: '/settings/securityPrivacy',
          page: SecurityPrivacySettingsRoute.page,
        ),
        AutoRoute(
          title: (context, data) =>
              context.locale.pages.settings.advanced.title,
          path: '/settings/advanced',
          page: AdvancedSettingsRoute.page,
        ),
      ];
}
