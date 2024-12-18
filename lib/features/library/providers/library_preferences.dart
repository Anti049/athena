import 'package:athena/features/settings/providers/common_preference_store.dart';
import 'package:athena/features/settings/providers/preference.dart';
import 'package:athena/features/settings/providers/preference_store.dart';
import 'package:athena/features/settings/providers/tri_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_preferences.g.dart';

enum SortBy {
  alphabetically,
  author,
  totalChapters,
  lastRead,
  lastChecked,
  lastUpdated,
  unreadChapters,
  latestChapter,
  dateFetched,
  dateAdded,
}

enum DisplayMode {
  compactGrid,
  comfortableGrid,
  coverOnlyGrid,
  list,
}

class LibraryPreferences {
  LibraryPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  bool anyFiltersActive() {
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

  Preference<TriState> filterDownloaded() => preferenceStore.getEnum(
        Preference.appStateKey("filterDownloaded"),
        TriState.disabled,
        TriState.values,
      );

  Preference<TriState> filterUnread() => preferenceStore.getEnum(
        Preference.appStateKey("filterUnread"),
        TriState.disabled,
        TriState.values,
      );

  Preference<TriState> filterStarted() => preferenceStore.getEnum(
        Preference.appStateKey("filterStarted"),
        TriState.disabled,
        TriState.values,
      );

  Preference<TriState> filterCompleted() => preferenceStore.getEnum(
        Preference.appStateKey("filterCompleted"),
        TriState.disabled,
        TriState.values,
      );

  Preference<TriState> filterBookmarked() => preferenceStore.getEnum(
        Preference.appStateKey("filterBookmarked"),
        TriState.disabled,
        TriState.values,
      );

  Preference<TriState> filterUpdated() => preferenceStore.getEnum(
        Preference.appStateKey("filterUpdated"),
        TriState.disabled,
        TriState.values,
      );

  Preference<SortBy> sortBy() => preferenceStore.getEnum(
        Preference.appStateKey("sortBy"),
        SortBy.alphabetically,
        SortBy.values,
      );

  Preference<bool> sortDirection() => preferenceStore.getBool(
        Preference.appStateKey("sortDirection"),
        true,
      );

  Preference<DisplayMode> displayMode() => preferenceStore.getEnum(
        Preference.appStateKey("displayMode"),
        DisplayMode.comfortableGrid,
        DisplayMode.values,
      );

  Preference<int> gridSize() => preferenceStore.getInt(
        Preference.appStateKey("gridSize"),
        2,
      );

  // Badges
  Preference<bool> downloadBadge() => preferenceStore.getBool(
        Preference.appStateKey("displayDownloadBadge"),
        true,
      );

  Preference<bool> localBadge() => preferenceStore.getBool(
        Preference.appStateKey("displayLocalBadge"),
        true,
      );

  Preference<bool> languageBadge() => preferenceStore.getBool(
        Preference.appStateKey("displayLanguageBadge"),
        false,
      );

  Preference<bool> displayContinueReadingButton() => preferenceStore.getBool(
        Preference.appStateKey("displayContinueReadingButton"),
        false,
      );

  Preference<bool> showCategoryTabs() => preferenceStore.getBool(
        Preference.appStateKey("showCategoryTabs"),
        false,
      );

  Preference<bool> showWorkCount() => preferenceStore.getBool(
        Preference.appStateKey("showWorkCount"),
        false,
      );

  Preference<bool> skipOutsideReleasePeriod() => preferenceStore.getBool(
        Preference.appStateKey("skipOutsideReleasePeriod"),
        false,
      );

  int activeTab = 0;
}

@riverpod
LibraryPreferences libraryPreferences(LibraryPreferencesRef ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
