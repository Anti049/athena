import 'package:athena/features/collection/domain/library_filters.dart';
import 'package:athena/features/collection/domain/library_item.dart';
import 'package:athena/features/collection/domain/library_model.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/works/providers/get_library_works.dart';
import 'package:dartx/dartx.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart' hide DebounceExtensions;
import 'package:stream_transform/stream_transform.dart';

part 'library_state.g.dart';

@riverpod
class LibraryState extends _$LibraryState {
  @override
  Stream<LibraryModel> build() {
    // Get preferences
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    // Process search query
    final searchStream = Rx.combineLatestList([
      _getSearchQuery().distinct().debounce(
            const Duration(
              milliseconds: 250,
            ),
          ),
      _getLibraryWorks(),
    ]).asyncMap((data) async {
      // Get stream data
      final searchQuery = data.first as String?;
      final libraryWorks = data.second as LibraryMap;

      // Filter library works based on search query
      final queriedLibrary = libraryWorks;
      queriedLibrary.forEach((k, v) async {
        if (searchQuery != null) {
          final libraryItems = <LibraryItem>[];
          for (final item in v) {
            if (await item.matches(searchQuery)) {
              libraryItems.add(item);
            }
          }
          queriedLibrary[k] = libraryItems;
        }
      });

      return LibraryModel(
        libraryItems: queriedLibrary,
        searchQuery: searchQuery,
        selectedItems: [],
      );
    });

    // Process library preferences
    final displayStream = Rx.combineLatest3(
      libraryPreferences.showCategoryTabs().changes(),
      libraryPreferences.showWorkCount().changes(),
      libraryPreferences.displayContinueReadingButton().changes(),
      (showCategoryTabs, showWorkCount, displayContinueReadingButton) {
        return LibraryModel(
          showCategoryTabs: showCategoryTabs,
          showWorkCount: showWorkCount,
          showWorkContinueButton: displayContinueReadingButton,
        );
      },
    );

    // Process active filters
    final filterStream = Rx.combineLatest(
      [
        _getLibraryFilters(),
      ],
      (data) => ([
        data[0].filterDownloaded,
        data[0].filterUnread,
        data[0].filterStarted,
        data[0].filterBookmarked,
        data[0].filterCompleted,
      ]).any(
        (element) => element != null && element,
      ),
    ).distinct().map((hasActiveFilters) {
      return LibraryModel(
        hasActiveFilters: hasActiveFilters,
      );
    });

    // Combine streams
    return Rx.combineLatest3(
      searchStream,
      displayStream,
      filterStream,
      (search, display, filters) {
        return search.copyWith(
          showCategoryTabs: display.showCategoryTabs,
          showWorkCount: display.showWorkCount,
          showWorkContinueButton: display.showWorkContinueButton,
          hasActiveFilters: filters.hasActiveFilters,
        );
      },
    );
  }

  /// Get search query stream
  Stream<String?> _getSearchQuery() async* {
    yield state.valueOrNull?.searchQuery;
  }

  /// Get library without filters or search queries
  Stream<LibraryMap> _getLibraryWorks() {
    // Get library works
    final getLibraryWorks = ref.watch(getLibraryWorksProvider);

    // Return library works
    final libraryWorksStream = Rx.combineLatestList([
      getLibraryWorks.subscribe(),
    ]).asyncMap(
      (data) async {
        final libraryWorks = data.first;
        final libraryItems = <LibraryItem>[];

        for (final work in libraryWorks) {
          libraryItems.add(
            LibraryItem(
              itemID: work.id,
              work: work,
            ),
          );
        }

        return {0: libraryItems};
      },
    );

    return libraryWorksStream;
  }

  /// Get library preferences
  Stream<LibraryFilters> _getLibraryFilters() {
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    return Rx.combineLatest(
      [
        libraryPreferences.filterDownloaded().changes(),
        libraryPreferences.filterUnread().changes(),
        libraryPreferences.filterStarted().changes(),
        libraryPreferences.filterBookmarked().changes(),
        libraryPreferences.filterCompleted().changes(),
      ],
      (data) => LibraryFilters(
        filterDownloaded: data[0].toBool(),
        filterUnread: data[1].toBool(),
        filterStarted: data[2].toBool(),
        filterBookmarked: data[3].toBool(),
        filterCompleted: data[4].toBool(),
      ),
    );
  }

  /// Refresh the library
  ///
  /// This method will refresh the library by fetching the latest works from the
  /// repository and updating the state.
  Future<LibraryModel> refresh() async {
    return ref.refresh(libraryStateProvider.future);
  }
}
