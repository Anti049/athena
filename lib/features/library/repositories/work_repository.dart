import 'package:athena/features/library/models/work.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_repository.g.dart';

abstract interface class WorkRepository {
  Future<List<Work>> getWorks();
  Stream<List<Work>> getWorksAsStream();
}

@riverpod
WorkRepository workRepository(Ref ref) {
  // Must be overriden, throw error if not
  throw UnimplementedError();
}
