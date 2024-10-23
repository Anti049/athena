import 'package:athena/features/category/domain/category.dart';
import 'package:athena/features/library/application/library_preferences.dart';
import 'package:athena/features/library/domain/library_item.dart';
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

      return LibraryTabState(
        library: library,
        searchQuery: searchQuery,
        selection: [],
        hasActiveFilters: libraryPreferences.anyFiltersActive(),
        showCategoryTabs: library.isNotEmpty,
        showWorkCount: library.isNotEmpty,
        showWorkContinueButton: library.isNotEmpty,
      );
    });

    return stream;
  }

  Stream<LibraryMap> _getLibraryStream() {
    // Return stream with one default LibraryItem
    return Stream.value({});
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