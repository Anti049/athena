import 'package:athena/features/library/domain/library_work.dart';
import 'package:athena/features/works/data/database.dart';
import 'package:athena/features/works/data/work_repository.dart';
import 'package:athena/features/works/domain/works.drift.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository_impl.g.dart';

class WorkRepositoryImpl implements WorkRepository {
  WorkRepositoryImpl({
    required this.db,
    required this.logger,
  });
  final Database db;
  final Logger logger;

  @override
  Future<List<LibraryWork>> getWorks() {
    // TODO: implement getWorks
    throw UnimplementedError();
  }

  @override
  Stream<List<LibraryWork>> getWorksAsStream() {
    // TODO: implement getWorksAsStream
    throw UnimplementedError();
  }

  @override
  Future<Work> getWorkById(int id) {
    throw UnimplementedError();
  }

  @override
  Stream<Work> getWorkByIdAsStream(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Work?> getWorkByUrlAndSourceId(String url, int sourceId) {
    throw UnimplementedError();
  }

  @override
  Stream<Work?> getWorkByUrlAndSourceIdAsStream(String url, int sourceId) {
    throw UnimplementedError();
  }

  @override
  Future<int?> insert(Work work) {
    throw UnimplementedError();
  }
}

@riverpod
WorkRepository workRepositoryImpl(WorkRepositoryImplRef ref) =>
    WorkRepositoryImpl(
      db: ref.watch(databaseProvider),
      logger: Logger(),
    );
