import 'dart:io';

import 'package:athena/features/library/domain/library_work.dart';
import 'package:athena/features/works/data/work_repository.dart';
import 'package:athena/features/works/domain/work.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository_local.g.dart';

class WorkRepositoryLocal implements WorkRepository {
  WorkRepositoryLocal({
    required this.directory,
    required this.extensions,
    required this.logger,
  });
  final Future<Directory> directory;
  final List<String> extensions;
  final Logger logger;

  @override
  Future<List<LibraryWork>> getWorks() async {
    // Search for files in the directory with the specified extensions
    final works = <LibraryWork>[];

    // Simulate fetching works from local storage
    await Future.delayed(const Duration(seconds: 1));

    // Log the directory and extensions being used
    logger.i(
        'Fetching works from directory: $directory with extensions: $extensions');

    // Here you would implement the logic to read files from the directory
    // and create LibraryWork objects from them.
    final Directory dir = await directory;
    if (await dir.exists()) {
      final List<FileSystemEntity> files = dir.listSync();
      for (var file in files) {
        if (extensions.contains(file.path.split('.').last)) {
          // Create a LibraryWork object from the file
          final fileName = file.path.split('/').last;
          final work = Work(
            id: 0,
            title: fileName,
            author: '',
            description: '',
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
  final directory =
      getApplicationDocumentsDirectory(); // Set your directory path here
  final extensions = ['epub']; // Set your file extensions here
  final logger = Logger();

  return WorkRepositoryLocal(
    directory: directory,
    extensions: extensions,
    logger: logger,
  );
}
