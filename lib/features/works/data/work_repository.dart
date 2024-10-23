import 'package:athena/features/library/domain/library_work.dart';
import 'package:athena/features/works/domain/works.drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository.g.dart';

abstract interface class WorkRepository {
  Future<List<LibraryWork>> getWorks();
  Stream<List<LibraryWork>> getWorksAsStream();
  Future<Work> getWorkById(int id);
  Stream<Work> getWorkByIdAsStream(int id);
  Future<Work?> getWorkByUrlAndSourceId(String url, int sourceId);
  Stream<Work?> getWorkByUrlAndSourceIdAsStream(String url, int sourceId);
  Future<int?> insert(Work work);
}

// Override this in the main method
@riverpod
WorkRepository workRepository(WorkRepositoryRef ref) {
  throw UnimplementedError();
}
