import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/searchable_settings.dart';
import 'package:athena/utils/locale.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:athena/routing/application/router.gr.dart';

class ILibrarySettings extends ISearchableSettings {
  const ILibrarySettings();

  @override
  String getTitle(BuildContext context) {
    return context.locale.page.library.title;
  }

  @override
  Widget getWidget() => const LibrarySettingsScreen();

  @override
  PageRouteInfo getRoute() => const LibrarySettingsRoute();

  @override
  List<Preference> getPreferences(BuildContext context, WidgetRef ref) {
    // Here you would return a list of preferences specific to library settings
    return [
      _getCategoryGroup(context),
      _getUpdateGroup(context),
      _getSwipeGroup(context),
    ];
  }

  PreferenceGroup _getCategoryGroup(BuildContext context) {
    return PreferenceGroup(
      title: context.locale.settings.library.categories.title,
      preferenceItems: [
        TextPreference(
          title:
              context.locale.settings.library.categories.editCategories.title,
          subtitle: context.locale.settings.library.categories.editCategories
              .subtitle(2),
          onClick: () {},
        ),
        TextPreference(
          title:
              context.locale.settings.library.categories.defaultCategory.title,
          subtitle: context
              .locale.settings.library.categories.defaultCategory.alwaysAsk,
          onClick: () {},
        ),
        SwitchPreference(
          title: context.locale.settings.library.categories.perCategorySort,
        ),
      ],
    );
  }

  PreferenceGroup _getUpdateGroup(BuildContext context) {
    return PreferenceGroup(
      title: context.locale.settings.library.globalUpdates.title,
      preferenceItems: [
        // Add update preferences here
      ],
    );
  }

  PreferenceGroup _getSwipeGroup(BuildContext context) {
    return PreferenceGroup(
      title: context.locale.settings.library.chapterSwipe.title,
      preferenceItems: [
        TextPreference(
          title: context.locale.settings.library.chapterSwipe.left,
          subtitle:
              context.locale.settings.library.chapterSwipe.options.download,
          onClick: () {},
        ),
        TextPreference(
          title: context.locale.settings.library.chapterSwipe.right,
          subtitle: context
              .locale.settings.library.chapterSwipe.options.markReadUnread,
          onClick: () {},
        ),
      ],
    );
  }
}

@RoutePage()
class LibrarySettingsScreen extends ConsumerWidget {
  const LibrarySettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const settings = ILibrarySettings();
    return SearchableSettings(
      title: settings.getTitle(context),
      preferences: () => settings.getPreferences(context, ref),
    );
  }
}
