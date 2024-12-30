import 'package:athena/common/presentation/empty.dart';
import 'package:athena/common/presentation/padded_app_bar.dart';
import 'package:athena/features/settings/screens/accounts/data/accounts_settings.dart';
import 'package:athena/features/settings/screens/advanced/data/advanced_settings.dart';
import 'package:athena/features/settings/screens/appearance/data/appearance_settings.dart';
import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/presentation/components/setting_scaffold.dart';
import 'package:athena/features/settings/screens/browse/data/browse_settings.dart';
import 'package:athena/features/settings/screens/data_storage/data/data_storage_settings.dart';
import 'package:athena/features/settings/screens/downloads/data/downloads_settings.dart';
import 'package:athena/features/settings/screens/library/data/library_settings.dart';
import 'package:athena/features/settings/screens/notifications/data/notifications_settings.dart';
import 'package:athena/features/settings/screens/reader/data/reader_settings.dart';
import 'package:athena/features/settings/screens/security_privacy/data/security_privacy_settings.dart';
import 'package:athena/features/settings/screens/tracking/data/tracking_settings.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/string.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

@RoutePage()
class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  final _settingScreens = const <ISearchableSettings>[
    IAppearanceSettings(),
    ILibrarySettings(),
    IAccountsSettings(),
    IReaderSettings(),
    IDownloadsSettings(),
    ITrackingSettings(),
    IBrowseSettings(),
    INotificationsSettings(),
    IDataStorageSettings(),
    ISecurityPrivacySettings(),
    IAdvancedSettings(),
  ];

  Iterable<SettingsData> getSettingsData(BuildContext context, WidgetRef ref) {
    return _settingScreens.map((screen) {
      return SettingsData(
        title: screen.getTitle(context),
        route: screen.getRoute(),
        contents: screen.getSettings(context, ref),
      );
    });
  }

  List<Setting> getSettingLinks(BuildContext context) {
    final router = AutoRouter.of(context);

    return [
      // Appearance
      TextSetting(
        title: context.locale.pages.settings.appearance.title,
        subtitle: context.locale.settings.appearance.subtitle,
        icon: Symbols.palette,
        onClick: () {
          router.push(const AppearanceSettingsRoute());
        },
      ),
      // Library
      TextSetting(
        title: context.locale.pages.settings.library.title,
        subtitle: context.locale.settings.library.subtitle,
        icon: Symbols.book,
        onClick: () {
          router.push(const LibrarySettingsRoute());
        },
      ),
      // Accounts
      TextSetting(
        title: context.locale.pages.settings.accounts.title,
        subtitle: context.locale.settings.accounts.subtitle,
        icon: Symbols.group,
        onClick: () {
          router.push(const AccountsSettingsRoute());
        },
      ),
      // Reader
      TextSetting(
        title: context.locale.pages.settings.reader.title,
        subtitle: context.locale.settings.reader.subtitle,
        icon: Symbols.chrome_reader_mode,
        onClick: () {
          router.push(const ReaderSettingsRoute());
        },
      ),
      // Downloads
      TextSetting(
        title: context.locale.pages.settings.downloads.title,
        subtitle: context.locale.settings.downloads.subtitle,
        icon: Symbols.file_download,
        onClick: () {
          router.push(const DownloadsSettingsRoute());
        },
      ),
      // Tracking
      TextSetting(
        title: context.locale.pages.settings.tracking.title,
        subtitle: context.locale.settings.tracking.subtitle,
        icon: Symbols.sync,
        onClick: () {
          router.push(const TrackingSettingsRoute());
        },
      ),
      // Browse
      TextSetting(
        title: context.locale.pages.settings.browse.title,
        subtitle: context.locale.settings.browse.subtitle,
        icon: Symbols.explore,
        onClick: () {
          router.push(const BrowseSettingsRoute());
        },
      ),
      // Notifications
      TextSetting(
        title: context.locale.pages.settings.notifications.title,
        subtitle: context.locale.settings.notifications.subtitle,
        icon: Symbols.notifications,
        onClick: () {
          router.push(const NotificationsSettingsRoute());
        },
      ),
      // Data & Storage
      TextSetting(
        title: context.locale.pages.settings.dataStorage.title,
        subtitle: context.locale.settings.dataStorage.subtitle,
        icon: Symbols.storage,
        onClick: () {
          router.push(const DataStorageSettingsRoute());
        },
      ),
      // Security & Privacy
      TextSetting(
        title: context.locale.pages.settings.securityPrivacy.title,
        subtitle: context.locale.settings.securityPrivacy.subtitle,
        icon: Symbols.security,
        onClick: () {
          router.push(const SecurityPrivacySettingsRoute());
        },
      ),
      // Advanced
      TextSetting(
        title: context.locale.pages.settings.advanced.title,
        subtitle: context.locale.settings.advanced.subtitle,
        icon: Symbols.developer_mode,
        onClick: () {
          router.push(const AdvancedSettingsRoute());
        },
      ),
      // About
      TextSetting(
        title: context.locale.pages.more.about.title,
        subtitle: context.locale.more.about.subtitle('Stable', '0.1.0'),
        icon: Symbols.info,
        // onClick: () {
        //   router.push(const AboutRoute());
        // },
      )
    ];
  }

  SearchAnchor getSearchButton(BuildContext context) {
    final router = AutoRouter.of(context);
    return SearchAnchor(
      isFullScreen: true,
      viewBackgroundColor: context.scheme.surfaceContainerLow,
      viewHintText: context.locale.settings.search.hint,
      builder: (context, controller) {
        return IconButton(
          icon: const Icon(Symbols.search),
          onPressed: () {
            controller.clear();
            controller.openView();
          },
        );
      },
      viewBuilder: (suggestions) {
        return Column(
          children: [
            Container(
              color: context.scheme.surfaceContainer,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.locale.settings.search.recent),
                    const SizedBox(height: 8.0),
                    Wrap(
                      children: [
                        ActionChip(
                          label: const Text(
                              'Test 1'), // TODO: Implement search history
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: context.scheme.outline,
              height: 1.0,
            ),
            if (suggestions.isEmpty)
              Expanded(
                child: Empty(
                  message: context.locale.settings.search.noResults,
                ),
              )
            else
              Expanded(
                child: ListView(
                  children: suggestions.toList(),
                ),
              ),
          ],
        );
      },
      suggestionsBuilder: (context, controller) {
        final searchKey = controller.text;
        if (searchKey.isEmpty) return List.empty();

        final data = getSettingsData(context, ref);
        final suggestions = data.flatMap(
          (settingsData) {
            return settingsData.contents
                // Only search from preferences that are ENABLED and have a TITLE
                .where((it) => it.title.isNotBlank)
                // Flatten items contained inside ENABLED PreferenceGroup
                .flatMap<(String?, ISetting)>((p) => switch (p) {
                      SettingGroup() => p.settings
                          .where((it) => it.title.isNotBlank)
                          .map((it) => (p.title, it)),
                      Setting() => [(null, p)],
                    })
                // Filter by search key
                .where((it) {
              final (_, p) = it;
              final inTitle = p.title.containsIgnoreCase(searchKey);
              // final insubtitle =
              //     p.subtitle?.containsIgnoreCase(searchKey) ?? false;
              return inTitle; // || insubtitle;
            }).map((it) {
              final (categoryTitle, p) = it;
              return SettingSearchResult(
                title: p.title,
                route: settingsData.route,
                breadcrumbs: categoryTitle != null
                    ? '${settingsData.title} > $categoryTitle'
                    : settingsData.title,
                highlightKey: searchKey,
              );
            });
          },
        ).toList();

        // Return list of widgets
        return List.generate(
          suggestions.length,
          (index) {
            final suggestion = suggestions[index];
            return ListTile(
              title: Text(suggestion.title),
              subtitle: Text(suggestion.breadcrumbs),
              onTap: () {
                router.push(suggestion.route);
                controller.closeView(null);
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SettingScaffold(
      appBar: PaddedAppBar(
        title: Text(context.locale.pages.settings.title),
        actions: [
          getSearchButton(context),
        ],
      ),
      settingsProvider: () => getSettingLinks(context),
    );
  }
}
