import 'package:athena/features/library/models/library_item.dart';
import 'package:athena/features/library/models/library_model.dart';
import 'package:athena/features/library/providers/library_preferences.dart';
import 'package:athena/features/story/providers/get_library_stories.dart';
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
      _getLibraryStories(),
    ]).asyncMap((data) async {
      final searchQuery = data.first as String?;
      final libraryStories = data[1] as List<LibraryItem>;

      // Filter stories
      final filteredStories = libraryStories.where((story) {
        return searchQuery.isNullOrEmpty || story.matches(searchQuery ?? '');
      }).toList();

      return LibraryModel(
        libraryItems: filteredStories,
        searchQuery: searchQuery,
      );
    });

    return searchStream;
  }

  /// Get search query stream
  Stream<String?> _getSearchQuery() async* {
    yield state.valueOrNull?.searchQuery;
  }

  /// Get library stories stream
  Stream<List<LibraryItem>> _getLibraryStories() {
    final libraryStories = ref.watch(getLibraryStoriesProvider);
    return Rx.combineLatestList([
      libraryStories.subscribe(),
    ]).asyncMap((data) async {
      final stories = data.first;
      return stories.map((s) => LibraryItem(itemID: s.id, story: s)).toList();
    });
  }

  // Search
  void search(String? query) async {
    final previousState = state.valueOrNull;
    if (previousState != null) {
      final newState = previousState.copyWith(searchQuery: query);
      state = await AsyncValue.guard(() async => newState);
    }
  }

  Future<LibraryModel> refresh() async {
    return ref.refresh(libraryStateProvider.future);
  }
}
