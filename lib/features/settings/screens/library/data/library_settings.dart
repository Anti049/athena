import 'package:athena/features/settings/models/searchable_settings.dart';
import 'package:athena/features/settings/models/setting.dart';
import 'package:athena/features/settings/screens/library/library_screen.dart';
import 'package:athena/features/settings/screens/library/providers/library_provider.dart';
import 'package:athena/router/router.gr.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AutomaticUpdate {
  off,
  every12Hours,
  daily,
  every2Days,
  every3Days,
  weekly,
}

class ILibrarySettings extends ISearchableSettings {
  const ILibrarySettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.pages.settings.library.title;
  }

  @override
  Widget getWidget() {
    return const LibrarySettingsScreen();
  }

  @override
  PageRouteInfo getRoute() {
    return const LibrarySettingsRoute();
  }

  @override
  List<ISetting> getSettings(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(libraryPreferencesProvider);

    return [
      _getCategoryGroup(context, preferences),
      _getGlobalUpdateGroup(context, preferences),
      _getChapterSwipeGroup(context, preferences),
    ];
  }

  SettingGroup _getCategoryGroup(
      BuildContext context, LibraryPreferences preferences) {
    final router = AutoRouter.of(context);

    return SettingGroup(
      title: context.locale.settings.library.categories.title,
      settings: [
        TextSetting(
          title:
              context.locale.settings.library.categories.editCategories.title,
          subtitle: context.locale.settings.library.categories.editCategories
              .subtitle(0),
          onClick: () {
            router.push(const EditCategoriesRoute());
          },
        ),
        ChoiceSetting(
          title:
              context.locale.settings.library.categories.defaultCategory.title,
          subtitle: context.locale.settings.library.categories.defaultCategory
              .subtitle(
            preferences.defaultCategory().get(),
          ),
          choices: [
            Choice(label: 'Always Ask', value: 'always_ask'),
            Choice(label: 'Default', value: 'default'),
          ],
          type: ChoiceType.radio,
          preference: preferences.defaultCategory(),
          // preference: preferences.defaultCategory(),
        ),
        SwitchSetting(
          title: context.locale.settings.library.categories.perCategorySort,
          preference: preferences.perCategorySort(),
        ),
      ],
    );
  }

  SettingGroup _getGlobalUpdateGroup(
      BuildContext context, LibraryPreferences preferences) {
    return SettingGroup(
      title: context.locale.settings.library.globalUpdates.title,
      settings: [
        ChoiceSetting(
          title: context
              .locale.settings.library.globalUpdates.automaticUpdates.title,
          subtitle: context
              .locale.settings.library.globalUpdates.automaticUpdates
              .subtitle(
            context.locale.settings.library.globalUpdates.automaticUpdates
                .choices[preferences.automaticUpdates().get().name]
                .toString(),
          ),
          choices: [
            ...(AutomaticUpdate.values
                .map(
                  (e) => Choice(
                    label: context.locale.settings.library.globalUpdates
                        .automaticUpdates.choices[e.name]
                        .toString(),
                    value: e,
                  ),
                )
                .toList()),
          ],
          type: ChoiceType.radio,
          preference: preferences.automaticUpdates(),
          // preference: preferences.defaultCategory(),
        ),
      ],
    );
  }

  SettingGroup _getChapterSwipeGroup(
      BuildContext context, LibraryPreferences preferences) {
    return SettingGroup(
      title: context.locale.settings.library.chapterSwipe.title,
      settings: [],
    );
  }
}
