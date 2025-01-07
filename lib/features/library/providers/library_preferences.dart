import 'package:athena/features/library/data/enums.dart';
import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/utils/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_preferences.g.dart';

class LibraryPreferences {
  LibraryPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  bool get optionsActive {
    bool filtersActive = filterDownloaded().get() != TriState.disabled ||
        filterUnread().get() != TriState.disabled ||
        filterStarted().get() != TriState.disabled ||
        filterCompleted().get() != TriState.disabled ||
        filterBookmarked().get() != TriState.disabled ||
        filterUpdated().get() != TriState.disabled;

    bool sortActive = sortBy().get() != SortBy.alphabetically ||
        sortDirection().get() != true;

    return filtersActive || sortActive;
  }

  // Filters
  void resetFilters() {
    filterDownloaded().set(TriState.disabled);
    filterUnread().set(TriState.disabled);
    filterStarted().set(TriState.disabled);
    filterCompleted().set(TriState.disabled);
    filterBookmarked().set(TriState.disabled);
    filterUpdated().set(TriState.disabled);
  }

  Preference<TriState> filterDownloaded() => preferenceStore.getEnum(
        "filterDownloaded",
        TriState.disabled,
        TriState.values,
      );
  Preference<TriState> filterUnread() => preferenceStore.getEnum(
        "filterUnread",
        TriState.disabled,
        TriState.values,
      );
  Preference<TriState> filterStarted() => preferenceStore.getEnum(
        "filterStarted",
        TriState.disabled,
        TriState.values,
      );
  Preference<TriState> filterCompleted() => preferenceStore.getEnum(
        "filterCompleted",
        TriState.disabled,
        TriState.values,
      );
  Preference<TriState> filterBookmarked() => preferenceStore.getEnum(
        "filterBookmarked",
        TriState.disabled,
        TriState.values,
      );
  Preference<TriState> filterUpdated() => preferenceStore.getEnum(
        "filterUpdated",
        TriState.disabled,
        TriState.values,
      );

  // Sort
  void resetSort() {
    sortBy().set(SortBy.alphabetically);
    sortDirection().set(true);
  }

  Preference<SortBy> sortBy() => preferenceStore.getEnum(
        "sortBy",
        SortBy.alphabetically,
        SortBy.values,
      );
  Preference<bool> sortDirection() => preferenceStore.getBool(
        "sortDirection",
        defaultValue: true,
      );

  // Display
  void resetDisplay() {
    displayMode().set(DisplayMode.comfortableGrid);
    gridSize().set(0.0);
    downloadedBadge().set(true);
    unreadBadge().set(true);
    localBadge().set(true);
    languageBadge().set(true);
    sourceBadge().set(true);
    continueReadingButton().set(true);
    showCategoryTabs().set(true);
    showFavoriteTabs().set(true);
    showWorkCount().set(true);
  }

  Preference<DisplayMode> displayMode() => preferenceStore.getEnum(
        "displayMode",
        DisplayMode.comfortableGrid,
        DisplayMode.values,
      );
  Preference<double> gridSize() => preferenceStore.getDouble(
        "gridSize",
        defaultValue: 0.0,
      );
  Preference<bool> downloadedBadge() => preferenceStore.getBool(
        "downloadedBadge",
        defaultValue: true,
      );
  Preference<bool> unreadBadge() => preferenceStore.getBool(
        "unreadBadge",
        defaultValue: true,
      );
  Preference<bool> localBadge() => preferenceStore.getBool(
        "localBadge",
        defaultValue: true,
      );
  Preference<bool> languageBadge() => preferenceStore.getBool(
        "languageBadge",
        defaultValue: true,
      );
  Preference<bool> sourceBadge() => preferenceStore.getBool(
        "sourceBadge",
        defaultValue: true,
      );
  Preference<bool> continueReadingButton() => preferenceStore.getBool(
        "continueReadingButton",
        defaultValue: true,
      );
  Preference<bool> showCategoryTabs() => preferenceStore.getBool(
        "showCategoryTabs",
        defaultValue: true,
      );
  Preference<bool> showFavoriteTabs() => preferenceStore.getBool(
        "showFavoriteTabs",
        defaultValue: true,
      );
  Preference<bool> showWorkCount() => preferenceStore.getBool(
        "showWorkCount",
        defaultValue: true,
      );
}

@riverpod
LibraryPreferences libraryPreferences(LibraryPreferencesRef ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
