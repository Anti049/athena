import 'package:athena/common_widgets/empty.dart';
import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:athena/features/settings/presentation/screens/settings_appearance.dart';
import 'package:athena/features/settings/presentation/screens/settings_library.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/routing/application/router.gr.dart';
import 'package:athena/utils/string.dart';
import 'package:athena/utils/theming.dart';
import 'package:auto_route/auto_route.dart';
import 'package:change_case/change_case.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'settings_screen.freezed.dart';

@freezed
class SettingsData with _$SettingsData {
  const factory SettingsData({
    required String title,
    required PageRouteInfo route,
    required List<Preference> contents,
  }) = _SettingsData;
}

@freezed
class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    required PageRouteInfo route,
    required String title,
    required String breadcrumbs,
    required String highlightKey,
  }) = _SearchResultItem;
}

const _settingScreens = [
  IAppearanceSettings(),
  ILibrarySettings(),
];

Iterable<SettingsData> getSettingsData(BuildContext context, WidgetRef ref) {
  return _settingScreens.map((screen) {
    return SettingsData(
      title: screen.getTitle(context),
      route: screen.getRoute(),
      contents: screen.getPreferences(context, ref),
    );
  });
}

@RoutePage()
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = 'settings';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  String appName = '';
  String channel = '';
  String version = '';

  @override
  void initState() {
    PackageInfo.fromPlatform().then(
      (packageInfo) {
        setState(() {
          appName = packageInfo.appName;
          channel = appFlavor?.toCapitalCase() ??
              'Unknown'; // Use appFlavor from flavors.dart
          version = packageInfo.version;
        });
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appearance = ref.watch(appearancePreferencesProvider);
    final router = AutoRouter.of(context);
    final items = [
      // Appearance
      TextPreference(
        title: context.locale.preferenceCategoryAppearance.header,
        subtitle: context.locale.preferenceCategoryAppearance.summary,
        icon: Icons.palette,
        onClick: () => router.push(const AppearanceSettingsRoute()),
      ),
      // Library
      TextPreference(
        title: context.locale.preferenceCategoryLibrary.header,
        subtitle: context.locale.preferenceCategoryLibrary.summary,
        icon: Icons.book,
        onClick: () => router.push(const LibrarySettingsRoute()),
      ),
      // Reader
      TextPreference(
        title: context.locale.preferenceCategoryReader.header,
        subtitle: context.locale.preferenceCategoryReader.summary,
        icon: Icons.chrome_reader_mode,
        onClick: () => /*router.push(const SettingsReaderRoute())*/ {},
      ),
      // Downloads
      TextPreference(
        title: context.locale.preferenceCategoryDownloads.header,
        subtitle: context.locale.preferenceCategoryDownloads.summary,
        icon: Icons.file_download,
        onClick: () => /*router.push(const SettingsDownloadsRoute())*/ {},
      ),
      // Tracking
      TextPreference(
        title: context.locale.preferenceCategoryTracking.header,
        subtitle: context.locale.preferenceCategoryTracking.summary,
        icon: Icons.sync,
        onClick: () => /*router.push(const SettingsTrackingRoute())*/ {},
      ),
      // Browse
      TextPreference(
        title: context.locale.preferenceCategoryBrowse.header,
        subtitle: context.locale.preferenceCategoryBrowse.summary,
        icon: Icons.explore,
        onClick: () => /*router.push(const SettingsBrowseRoute())*/ {},
      ),
      // Notifications
      TextPreference(
        title: context.locale.preferenceCategoryNotifications.header,
        subtitle: context.locale.preferenceCategoryNotifications.summary,
        icon: Icons.notifications,
        onClick: () => router.push(const NotificationSettingsRoute()),
      ),
      // Data & Storage
      TextPreference(
        title: context.locale.preferenceCategoryDataStorage.header,
        subtitle: context.locale.preferenceCategoryDataStorage.summary,
        icon: Icons.storage,
        onClick: () => /*router.push(const SettingsDataStorageRoute())*/ {},
      ),
      // Security & Privacy
      TextPreference(
        title: context.locale.preferenceCategorySecurityPrivacy.header,
        subtitle: context.locale.preferenceCategorySecurityPrivacy.summary,
        icon: Icons.security,
        onClick: () => /*router.push(const SettingsSecurityPrivacyRoute())*/ {},
      ),
      // Advanced
      TextPreference(
        title: context.locale.preferenceCategoryAdvanced.header,
        subtitle: context.locale.preferenceCategoryAdvanced.summary,
        icon: Icons.settings,
        onClick: () => /*router.push(const SettingsAdvancedRoute())*/ {},
      ),
      // About
      TextPreference(
        title: context.locale.preferenceCategoryAbout,
        subtitle: context.locale.preferenceVersion.summary(
          channel,
          version,
          DateFormat(appearance.dateFormat().get().format)
              .format(DateTime.now()),
        ),
        icon: Icons.info,
        onClick: () => router.push(const AboutRoute()),
      ),
    ];

    return PreferenceScaffold(
      appBar: AppBar(
        title: Text(context.locale.labelSettings),
        actions: [
          SearchAnchor(
            isFullScreen: true,
            viewBackgroundColor: context.scheme.surfaceContainerLow,
            viewHintText: 'Search settings...',
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
                          const Text('Recent searches'),
                          const SizedBox(height: 8.0),
                          Wrap(
                            children: [
                              ActionChip(
                                label: const Text('Test 1'),
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
                    const Expanded(
                      child: Empty(message: 'No results found'),
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
                      .where((it) => it.enabled && it.title.isNotBlank)
                      // Flatten items contained inside ENABLED PreferenceGroup
                      .flatMap<(String?, PreferenceItem)>((p) => switch (p) {
                            PreferenceGroup() => p.enabled
                                ? p.preferenceItems
                                    .where((it) =>
                                        it.enabled && it.title.isNotBlank)
                                    .map((it) => (p.title, it))
                                : const [],
                            PreferenceItem() => [(null, p)],
                          })
                      // Filter by search key
                      .where((it) {
                    final (_, p) = it;
                    final inTitle = p.title.containsIgnoreCase(searchKey);
                    final inSummary =
                        p.subtitle?.containsIgnoreCase(searchKey) ?? false;
                    return inTitle || inSummary;
                  }).map((it) {
                    final (categoryTitle, p) = it;
                    return SearchResultItem(
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
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      itemsProvider: () => items,
    );
  }
}
