import 'package:athena/features/story/models/story.dart';
import 'package:athena/features/story/repositories/story_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_library_stories.g.dart';

class GetLibraryStories {
  GetLibraryStories(
    this._storyRepository,
  );

  final StoryRepository _storyRepository;

  Future<List<Story>> await_() => _storyRepository.getStories();
  Stream<List<Story>> subscribe() => _storyRepository.getStoriesStream();
}

@riverpod
GetLibraryStories getLibraryStories(GetLibraryStoriesRef ref) {
  return GetLibraryStories(ref.watch(storyRepositoryProvider));
}
