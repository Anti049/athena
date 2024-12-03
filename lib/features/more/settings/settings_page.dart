import 'package:athena/common_widgets/empty.dart';
import 'package:athena/common_widgets/padded_app_bar.dart';
import 'package:athena/features/more/settings/appearance/data/appearance_settings.dart';
import 'package:athena/features/more/settings/models/searchable_settings.dart';
import 'package:athena/features/more/settings/models/setting.dart';
import 'package:athena/features/more/settings/presentation/setting_scaffold.dart';
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
        title: context.locale.appearance,
        subtitle: 'Theme, font, language, and more',
        icon: Symbols.palette,
        onClick: () {
          router.push(const AppearanceSettingsRoute());
        },
      )
    ];
  }

  SearchAnchor getSearchButton(BuildContext context) {
    final router = AutoRouter.of(context);
    return SearchAnchor(
      isFullScreen: true,
      viewBackgroundColor: context.scheme.surfaceContainerLow,
      viewHintText: 'Search settings...', // TODO: Localize this
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
                child: Empty(
                  message: 'No results found',
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
        title: Text(context.locale.settings),
        actions: [
          getSearchButton(context),
        ],
      ),
      settingsProvider: () => getSettingLinks(context),
    );
  }
}
