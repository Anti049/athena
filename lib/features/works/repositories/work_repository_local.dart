import 'dart:io';

import 'package:athena/features/book/services/readers.dart';
import 'package:athena/features/book/models/book.dart';
import 'package:athena/features/library/models/library_work.dart';
import 'package:athena/features/storage/providers/storage_preferences.dart';
import 'package:athena/features/works/repositories/work_repository.dart';
import 'package:athena/features/works/models/work.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository_local.g.dart';

class WorkRepositoryLocal implements WorkRepository {
  WorkRepositoryLocal({
    required this.directory,
    required this.extensions,
    required this.logger,
  });
  final String directory;
  final List<String> extensions;
  final Logger logger;

  @override
  Future<List<LibraryWork>> getWorks() async {
    // Search for files in the directory with the specified extensions
    final works = <LibraryWork>[];

    // Log the directory and extensions being used
    logger.i(
        'Fetching works from directory: $directory with extensions: $extensions');

    // Here you would implement the logic to read files from the directory
    // and create LibraryWork objects from them.
    final Directory dir = Directory(directory);
    if (await dir.exists()) {
      final List<FileSystemEntity> files = dir.listSync(
        recursive: true,
      );
      logger.i('Found ${files.length} files in directory: $directory');
      int index = 0;
      for (var file in files) {
        if (extensions.contains(file.path.split('.').last)) {
          // Create a LibraryWork object from the file
          final fileName = file.path.split('/').last;
          final title = fileName.split('.').first;
          try {
            final Book book = await readBook(file as File);
            final work = Work(
              id: index++,
              title: book.metaData?.title ?? title,
              author: book.metaData?.authors.join(', ') ?? '',
              description: book.metaData?.summary ?? '',
              coverURL: '',
            );
            final libraryWork = LibraryWork(
              work: work,
              category: 0,
              totalChapters: 0,
              readCount: 0,
              bookmarkCount: 0,
              latestUpload: DateTime.now(),
              chapterFetchedAt: DateTime.now(),
              lastRead: DateTime.now(),
            );
            works.add(libraryWork);
          } catch (error) {
            logger.e('Error reading file: $file');
          }
        }
      }
    } else {
      logger.w('Directory does not exist: $directory');
    }

    return works;
  }

  @override
  Stream<List<LibraryWork>> getWorksAsStream() {
    // Monitor directory for changes and return a stream of LibraryWork
    final stream = Stream.fromFuture(getWorks()).asBroadcastStream();

    // Add logging to check if the stream is emitting values
    stream.listen((works) {
      logger.i('Stream emitted: $works');
    }, onError: (error) {
      logger.e('Stream error: $error');
    });

    return stream;
  }

  @override
  Future<Work> getWorkById(int id) {
    // TODO: implement getWorkById
    throw UnimplementedError();
  }

  @override
  Stream<Work> getWorkByIdAsStream(int id) {
    // TODO: implement getWorkByIdAsStream
    throw UnimplementedError();
  }

  @override
  Future<Work?> getWorkByUrlAndSourceId(String url, int sourceId) {
    // TODO: implement getWorkByUrlAndSourceId
    throw UnimplementedError();
  }

  @override
  Stream<Work?> getWorkByUrlAndSourceIdAsStream(String url, int sourceId) {
    // TODO: implement getWorkByUrlAndSourceIdAsStream
    throw UnimplementedError();
  }

  @override
  Future<int?> insert(Work work) {
    // TODO: implement insert
    throw UnimplementedError();
  }
}

@riverpod
WorkRepository workRepositoryLocal(WorkRepositoryLocalRef ref) {
  final directory = ref
      .watch(storagePreferencesProvider)
      .storageLocation()
      .get(); // Set your directory path here
  final extensions = ['epub']; // Set your file extensions here
  final logger = Logger();

  return WorkRepositoryLocal(
    directory: directory,
    extensions: extensions,
    logger: logger,
  );
}
