import 'dart:io';

import 'package:athena/features/book/services/book_service.dart';
import 'package:athena/features/settings/screens/data_storage/providers/data_storage_provider.dart';
import 'package:athena/features/story/models/story.dart';
import 'package:athena/features/story/repositories/story_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_story_repository.g.dart';

class LocalStoryRepository implements StoryRepository {
  LocalStoryRepository({
    required this.storageFolders,
    required this.extensions,
    required this.logger,
    required this.ref,
  });
  final List<String> storageFolders;
  final List<String> extensions;
  final Logger logger;
  final Ref ref;

  @override
  Future<List<Story>> getStories() async {
    final stories = <Story>[];

    logger.i('Getting stories from local storage');

    for (final folder in storageFolders) {
      if (folder.isEmpty) {
        logger.w('Folder name is empty');
        continue;
      }
      final Directory dir = Directory(folder);
      if (!await dir.exists()) {
        logger.w('Folder does not exist: $folder');
        continue;
      }
      final List<FileSystemEntity> files =
          await dir.list(recursive: true).toList();
      int index = 0;
      for (final file in files) {
        if (file is File) {
          final path = file.path;
          final extension = path.split('.').last;
          final fileName = file.path.split('/').last;
          final title = fileName.split('.').first;
          if (!extensions.contains(extension)) {
            logger.w('File extension not supported: $extension');
            continue;
          }
          final book = await ref.read(bookServiceProvider).readBook(path);
          final story = Story(
            id: index,
            title: book.metadata?.title ?? title,
            authors: book.metadata?.authors ?? [],
            description: book.metadata?.description ?? '',
            chapters: 0,
            words: 0,
          );
          stories.add(story);
          index++;
        } else {
          logger.w('Not a file: $file');
        }
      }
    }
    return stories;
  }

  @override
  Stream<List<Story>> getStoriesStream() {
    final stream = Stream.fromFuture(getStories()).asBroadcastStream();
    return stream;
  }

  @override
  Future<Story> getStory(int id) async {
    // TODO: implement getStory
    throw UnimplementedError();
  }

  @override
  Stream<Story> getStoryStream(int id) {
    // TODO: implement getStoryStream
    throw UnimplementedError();
  }

  @override
  Future<Story?> getStoryByUrl(String url, int extensionId) async {
    // TODO: implement getStoryByUrl
    throw UnimplementedError();
  }

  @override
  Stream<Story?> getStoryByUrlStream(String url, int extensionId) {
    // TODO: implement getStoryByUrlStream
    throw UnimplementedError();
  }

  @override
  Future<int?> createStory(Story story) async {
    // TODO: implement createStory
    throw UnimplementedError();
  }
}

@riverpod
StoryRepository localStoryRepository(StoryRepositoryRef ref) {
  final storageFolders =
      ref.watch(dataStoragePreferencesProvider).storageFolders().get();
  final extensions = ['epub'];
  final logger = Logger();

  return LocalStoryRepository(
    // storageFolders: storageFolders,
    storageFolders: [
      ref.watch(dataStoragePreferencesProvider).storageLocation().get(),
    ],
    extensions: extensions,
    logger: logger,
    ref: ref,
  );
}
