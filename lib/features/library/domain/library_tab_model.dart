import 'package:athena/features/category/domain/category.dart';
import 'package:athena/features/library/application/library_preferences.dart';
import 'package:athena/features/library/domain/library_item.dart';
import 'package:athena/features/library/domain/library_work.dart';
import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:athena/features/works/application/get_library_works.dart';
import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart' hide DebounceExtensions;
import 'package:stream_transform/stream_transform.dart';

part 'library_tab_model.freezed.dart';
part 'library_tab_model.g.dart';

typedef LibraryMap = Map<Category, List<LibraryItem>>;

@riverpod
class LibraryTabModel extends _$LibraryTabModel {
  Stream<String?> searchQueryStream() async* {
    yield state.valueOrNull?.searchQuery;
  }

  @override
  Stream<LibraryTabState> build() {
    final libraryPreferences = ref.watch(libraryPreferencesProvider);

    final stream = Rx.combineLatestList(
      [
        searchQueryStream().distinct().debounce(
              const Duration(milliseconds: 250),
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
        // selection: [],
        // hasActiveFilters: libraryPreferences.anyFiltersActive(),
        // showCategoryTabs: queriedLibrary.isNotEmpty,
        // showWorkCount: queriedLibrary.isNotEmpty,
        // showWorkContinueButton: queriedLibrary.isNotEmpty,
      );
    });

    return stream;
  }

  Stream<LibraryMap> _getLibraryStream() {
    final getLibraryWorks = ref.watch(getLibraryWorksProvider);

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
            libraryWork: libraryWork,
            downloadCount: prefs.downloadBadge ? -1 : 0,
            unreadCount: libraryWork.unreadCount,
            isLocal: prefs.localBadge ? true : false,
            source: '',
            ref: ref,
          ),
        );
      }
      return libraryItems.groupBy((it) => it.libraryWork.category);
    });

    return Rx.combineLatest2(
      const Stream.empty(),
      libraryWorksStream,
      (categories, libraryWorks) {
        final displayCategories =
            libraryWorks.isNotEmpty && !libraryWorks.containsKey(0)
                ? categories.whereNot((it) => it.isSystemCategory)
                : categories;

        return displayCategories
            .associateWith((it) => libraryWorks[it.id] ?? const []);
      },
    );
  }

  void search(String? query) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(searchQuery: query);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  // Refresh library
  Future<LibraryTabState> refresh() async {
    return ref.refresh(libraryTabModelProvider.future);
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
        libraryPreferences.globalFilterDownloaded().changes(),
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
        skipOutsideReleasePeriod: false,
        globalFilterDownloaded: it[4] as bool,
        filterDownloaded: it[5] as bool?,
        filterUnread: it[6] as bool?,
        filterStarted: it[7] as bool?,
        filterBookmarked: it[8] as bool?,
        filterCompleted: it[9] as bool?,
        filterIntervalCustom: false,
      ),
    );
  }
}

@freezed
class LibraryTabState with _$LibraryTabState {
  const factory LibraryTabState({
    @Default({}) LibraryMap library,
    String? searchQuery,
    @Default([]) List<LibraryItem> selection,
    @Default(false) bool hasActiveFilters,
    @Default(false) bool showCategoryTabs,
    @Default(false) bool showWorkCount,
    @Default(false) bool showWorkContinueButton,
  }) = _LibraryTabState;
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
