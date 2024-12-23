import 'package:athena/features/library/models/work.dart';
import 'package:athena/features/library/repositories/work_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository_folder.g.dart';

class FolderWorkRepository implements WorkRepository {
  FolderWorkRepository({
    required this.folders,
    required this.extensions,
    required this.logger,
  });
  final List<String> folders;
  final List<String> extensions;
  final Logger logger;

  @override
  Future<List<Work>> getWorks() async {
    final List<Work> works = [];

    return works;
  }

  @override
  Stream<List<Work>> getWorksAsStream() {
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
}

@riverpod
WorkRepository workRepositoryLocal(Ref ref) {
  final folders = <String>[]; // Set your directory path here
  final extensions = ['epub']; // Set your file extensions here
  final logger = Logger();

  return FolderWorkRepository(
    folders: folders,
    extensions: extensions,
    logger: logger,
  );
}
