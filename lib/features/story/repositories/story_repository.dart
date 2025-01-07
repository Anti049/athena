import 'package:athena/features/story/models/story.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'story_repository.g.dart';

abstract interface class StoryRepository {
  // Get all stories
  Future<List<Story>> getStories();
  Stream<List<Story>> getStoriesStream();
  // Get a story by ID
  Future<Story> getStory(int id);
  Stream<Story> getStoryStream(int id);
  // Get a story by URL and extension ID
  Future<Story?> getStoryByUrl(String url, int extensionId);
  Stream<Story?> getStoryByUrlStream(String url, int extensionId);
  // Create a story
  Future<int?> createStory(Story story);
}

@riverpod
StoryRepository storyRepository(Ref ref) {
  throw UnimplementedError();
}
