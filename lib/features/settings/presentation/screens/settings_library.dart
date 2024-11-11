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
    return context.locale.preferenceCategoryLibrary.header;
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
      title: context.locale.preferenceSectionCategories,
      preferenceItems: [
        TextPreference(
          title: context.locale.preferenceCategories.header,
          subtitle: context.locale.preferenceCategories.summary(2),
          onClick: () {},
        ),
        TextPreference(
          title: context.locale.preferenceDefaultCategory.header,
          subtitle: context.locale.preferenceDefaultCategory.alwaysAsk,
          onClick: () {},
        ),
        SwitchPreference(
          title: context.locale.preferencePerCategorySort,
        ),
      ],
    );
  }

  PreferenceGroup _getUpdateGroup(BuildContext context) {
    return PreferenceGroup(
      title: context.locale.preferenceSectionUpdate,
      preferenceItems: [
        // Add update preferences here
      ],
    );
  }

  PreferenceGroup _getSwipeGroup(BuildContext context) {
    return PreferenceGroup(
      title: context.locale.preferenceSectionSwipe,
      preferenceItems: [
        TextPreference(
          title: context.locale.preferenceSwipeLeft,
          subtitle: context.locale.preferenceSwipeActions.download,
          onClick: () {},
        ),
        TextPreference(
          title: context.locale.preferenceSwipeRight,
          subtitle: context.locale.preferenceSwipeActions.readUnread,
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
