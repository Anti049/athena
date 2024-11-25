import 'package:athena/features/works/models/work.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository.g.dart';

abstract interface class WorkRepository {
  Future<List<Work>> getWorks();
  Stream<List<Work>> getWorksAsStream();
  Future<Work> getWorkById(int id);
  Stream<Work> getWorkByIdAsStream(int id);
  Future<Work?> getWorkByUrlAndSourceId(String url, int sourceId);
  Stream<Work?> getWorkByUrlAndSourceIdAsStream(String url, int sourceId);
  Future<int?> insert(Work work);
}

// Override this in the main method
@riverpod
WorkRepository workRepository(Ref ref) {
  throw UnimplementedError();
}
