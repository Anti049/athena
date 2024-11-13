import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/library/models/library_item.dart';
import 'package:athena/features/library/models/library_work.dart';
import 'package:athena/features/settings/providers/base_preferences.dart';
import 'package:athena/features/settings/providers/tri_state.dart';
import 'package:athena/features/works/providers/get_library_works.dart';
import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart' hide DebounceExtensions;
import 'package:stream_transform/stream_transform.dart';

part 'library_tab_model.freezed.dart';
part 'library_tab_model.g.dart';

typedef LibraryMap = Map<int, List<LibraryItem>>;

@riverpod
class LibraryTabModel extends _$LibraryTabModel {
  Stream<String?> searchQueryStream() async* {
    yield state.valueOrNull?.searchQuery;
  }

  @override
  Stream<LibraryTabState> build() {
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    final stream1 = Rx.combineLatestList(
      [
        searchQueryStream().distinct().debounce(
              const Duration(
                milliseconds: 250,
              ),
            ),
        _getLibraryStream(),
      ],
    ).asyncMap((e) async {
      final searchQuery = e.first as String?;
      final library = e.second as LibraryMap;

      final queriedLibrary = library;
      queriedLibrary.forEach((k, v) async {
        if (searchQuery != null) {
          // Filter the items based on the search query
          final libraryItems = <LibraryItem>[];
          for (final item in v) {
            if (await item.matches(searchQuery)) {
              libraryItems.add(item);
            }
          }
          queriedLibrary[k] = libraryItems;
        }
      });

      return LibraryTabState(
        library: queriedLibrary,
        searchQuery: searchQuery,
        selection: [],
        hasActiveFilters: libraryPreferences.anyFiltersActive(),
        showCategoryTabs: queriedLibrary.isNotEmpty,
        showWorkCount: queriedLibrary.isNotEmpty,
        showWorkContinueButton: queriedLibrary.isNotEmpty,
      );
    });

    final stream2 = Rx.combineLatest3(
      libraryPreferences.showCategoryTabs().changes(),
      libraryPreferences.showWorkCount().changes(),
      libraryPreferences.displayContinueReadingButton().changes(),
      (a, b, c) => LibraryTabState(
        showCategoryTabs: a,
        showWorkCount: b,
        showWorkContinueButton: c,
      ),
    );

    final stream3 = Rx.combineLatest2(
      _getLibraryItemPreferencesStream(),
      _getTrackingFilterStream(),
      (prefs, trackFilter) => ([
        prefs.filterDownloaded,
        prefs.filterUnread,
        prefs.filterStarted,
        prefs.filterBookmarked,
        prefs.filterCompleted,
        prefs.filterIntervalCustom,
        // ...trackFilter.values,
      ]).any((it) => it != null && it),
    ).distinct().map(
          (it) => LibraryTabState(
            hasActiveFilters: it,
          ),
        );

    return Rx.combineLatest3(
      stream1,
      stream2,
      stream3,
      (a, b, c) => LibraryTabState(
        library: a.library,
        searchQuery: a.searchQuery,
        selection: a.selection,
        showCategoryTabs: b.showCategoryTabs,
        showWorkCount: b.showWorkCount,
        showWorkContinueButton: b.showWorkContinueButton,
        hasActiveFilters: c.hasActiveFilters,
      ),
    );
  }

  Stream<LibraryMap> _getLibraryStream() {
    final getLibraryWorks = ref.watch(getLibraryWorksProvider);
    // final getCategories = ref.watch(categoriesProvider);

    final libraryWorksStream = Rx.combineLatestList([
      getLibraryWorks.subscribe(),
      _getLibraryItemPreferencesStream(),
    ]).asyncMap((e) async {
      final libraryWorkList = e.first as List<LibraryWork>;
      final prefs = e.second as _ItemPreferences;
      final libraryItems = <LibraryItem>[];

      for (final libraryWork in libraryWorkList) {
        libraryItems.add(
          LibraryItem(
            itemID: libraryWork.id,
            libraryWork: libraryWork,
            downloadCount: prefs.downloadBadge ? -1 : 0,
            unreadCount: libraryWork.unreadCount,
            isLocal: prefs.localBadge && false,
            source: '',
            ref: ref,
          ),
        );
      }
      return libraryItems.groupBy((it) => it.libraryWork.category);
    });

    return libraryWorksStream;

    // return Rx.combineLatest2(
    //   getCategories.subscribe(),
    //   libraryWorksStream,
    //   (categories, libraryWorks) {
    //     final displayCategories =
    //         libraryWorks.isNotEmpty && !libraryWorks.containsKey(0)
    //             ? categories.whereNot((it) => it.isSystemCategory)
    //             : categories;

    //     return displayCategories
    //         .associateWith((it) => libraryWorks[it.id] ?? const []);
    //   },
    // );
  }

  Stream<_ItemPreferences> _getLibraryItemPreferencesStream() {
    final preferences = ref.watch(basePreferencesProvider);
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    return Rx.combineLatest(
      [
        libraryPreferences.downloadBadge().changes(),
        libraryPreferences.localBadge().changes(),
        libraryPreferences.languageBadge().changes(),
        libraryPreferences.skipOutsideReleasePeriod().changes(),
        preferences.downloadedOnly().changes(),
        libraryPreferences.filterDownloaded().changes(),
        libraryPreferences.filterUnread().changes(),
        libraryPreferences.filterStarted().changes(),
        libraryPreferences.filterBookmarked().changes(),
        libraryPreferences.filterCompleted().changes(),
        // libraryPreferences.filterIntervalCustom().changes(),
      ],
      (it) => _ItemPreferences(
        downloadBadge: it[0] as bool,
        localBadge: it[1] as bool,
        languageBadge: it[2] as bool,
        skipOutsideReleasePeriod: it[3] as bool,
        globalFilterDownloaded: it[4] as bool,
        filterDownloaded: (it[5] as TriState).toBool(),
        filterUnread: (it[6] as TriState).toBool(),
        filterStarted: (it[7] as TriState).toBool(),
        filterBookmarked: (it[8] as TriState).toBool(),
        filterCompleted: (it[9] as TriState).toBool(),
        filterIntervalCustom: false,
      ),
    );
  }

  Stream<Map<int, TriState>> _getTrackingFilterStream() {
    // final preferences = ref.watch(basePreferencesProvider);
    // final libraryPreferences = ref.watch(libraryPreferencesProvider);

    // return Rx.combineLatest(
    //   [
    //     preferences.trackingFilterDownloaded().changes(),
    //     preferences.trackingFilterUnread().changes(),
    //     preferences.trackingFilterStarted().changes(),
    //     preferences.trackingFilterBookmarked().changes(),
    //     preferences.trackingFilterCompleted().changes(),
    //     libraryPreferences.filterIntervalCustom().changes(),
    //   ],
    //   (it) => {
    //     1: (it[0] as TriState).toBool(),
    //     2: (it[1] as TriState).toBool(),
    //     3: (it[2] as TriState).toBool(),
    //     4: (it[3] as TriState).toBool(),
    //     5: (it[4] as TriState).toBool(),
    //     6: false,
    //   },
    // );
    return Stream.value({});
  }

  // Search
  void search(String? query) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(searchQuery: query);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  // Selection
  void clearSelection() async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      state = await AsyncValue.guard(
        () async => previousState.copyWith(selection: const []),
      );
    }
  }

  void toggleSelection(LibraryWork work) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      // Might mutate previousState
      List<LibraryWork> newSelection = [];
      newSelection.addAll(previousState.selection);
      if (newSelection.any((it) => it.id == work.id)) {
        newSelection.removeWhere((it) => it.id == work.id);
      } else {
        newSelection.add(work);
      }
      final newState = previousState.copyWith(selection: newSelection);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  /// Selects all works between and including the given work and the last pressed work from the
  /// same category as the given work
  void toggleRangeSelection(LibraryWork work) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      // Might mutate previousState
      List<LibraryWork> newSelection = [];
      newSelection.addAll(previousState.selection);
      final lastSelected = newSelection.lastOrNull;
      if (lastSelected?.category != work.category) {
        newSelection.add(work);
        final newState = previousState.copyWith(selection: newSelection);
        state = await AsyncValue.guard(() async => newState);
        return;
      }

      final items = previousState
              .getLibraryItemsByCategoryID(work.category)
              ?.map((it) => it.libraryWork)
              .toList() ??
          const [];
      final lastWorkIndex = items.indexOf(lastSelected!);
      final curWorkIndex = items.indexOf(work);

      final selectedIDs = newSelection.map((it) => it.id);
      final IntRange selectionRange;
      if (lastWorkIndex < curWorkIndex) {
        selectionRange = IntRange(lastWorkIndex, curWorkIndex);
      } else if (curWorkIndex < lastWorkIndex) {
        selectionRange = IntRange(curWorkIndex, lastWorkIndex);
      } else {
        // We shouldn't reach this point
        return;
      }
      final newSelections = selectionRange.mapNotNull(
        (index) => selectedIDs.contains(items[index].id) ? null : items[index],
      );
      newSelection.addAll(newSelections);
      final newState = previousState.copyWith(selection: newSelection);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  void selectAll(int index) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      // Might mutate previousState
      List<LibraryWork> newSelection = [];
      newSelection.addAll(previousState.selection);
      final categoryID = previousState.categories.elementAtOrNull(index) ?? -1;
      final selectedIDs = newSelection.map((it) => it.id);
      final items = previousState
          .getLibraryItemsByCategoryID(categoryID)
          ?.mapNotNull((item) => selectedIDs.contains(item.libraryWork.id)
              ? null
              : item.libraryWork);
      if (items != null) newSelection.addAll(items);
      final newState = previousState.copyWith(selection: newSelection);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  void invertSelection(int index) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      // Might mutate previousState
      List<LibraryWork> newSelection = [];
      newSelection.addAll(previousState.selection);
      final categoryID = previousState.categories[index];
      final items = previousState
              .getLibraryItemsByCategoryID(categoryID)
              ?.map((it) => it.libraryWork) ??
          const [];
      final selectedIDs = newSelection.map((it) => it.id);
      final partitions = items.partition((it) => selectedIDs.contains(it.id));
      final toRemove = partitions[0];
      final toAdd = partitions[1];
      final toRemoveIDs = toRemove.map((it) => it.id);
      newSelection.removeWhere((it) => toRemoveIDs.contains(it.id));
      newSelection.addAll(toAdd);
      final newState = previousState.copyWith(selection: newSelection);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  // Refresh library
  Future<LibraryTabState> refresh() async {
    return ref.refresh(libraryTabModelProvider.future);
  }
}

@freezed
class LibraryTabState with _$LibraryTabState {
  const LibraryTabState._();
  const factory LibraryTabState({
    @Default({}) LibraryMap library,
    String? searchQuery,
    @Default([]) List<LibraryWork> selection,
    @Default(false) bool hasActiveFilters,
    @Default(false) bool showCategoryTabs,
    @Default(false) bool showWorkCount,
    @Default(false) bool showWorkContinueButton,
  }) = _LibraryTabState;

  int get _libraryCount => library.values
      .flatten()
      .distinctBy((it) => it.libraryWork.work.id)
      .length;

  bool get isLibraryEmpty => _libraryCount == 0;

  bool get selectionMode => selection.isNotEmpty;
  int get selectionCount => selection.length;

  bool isSelected(LibraryWork work) => selection.contains(work);

  List<int> get categories => library.keys.toList();

  List<LibraryItem>? getLibraryItemsByCategoryID(int categoryID) {
    final items = library.filter((e) => e.key == categoryID);
    return items.isNotEmpty ? items.toList().first.second : null;
  }

  List<LibraryItem> getLibraryItemsByPage(int page) =>
      library.values.toList().elementAtOrNull(page) ?? const [];
}

@freezed
class _ItemPreferences with _$ItemPreferences {
  const factory _ItemPreferences({
    required bool downloadBadge,
    required bool localBadge,
    required bool languageBadge,
    required bool skipOutsideReleasePeriod,
    required bool globalFilterDownloaded,
    required bool? filterDownloaded,
    required bool? filterUnread,
    required bool? filterStarted,
    required bool? filterBookmarked,
    required bool? filterCompleted,
    required bool? filterIntervalCustom,
  }) = __ItemPreferences;
}
