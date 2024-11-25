import 'package:athena/features/library/models/library_work.dart';
import 'package:athena/features/works/models/work.dart';
import 'package:athena/features/works/repositories/work_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_library_works.g.dart';

class GetLibraryWorks {
  final WorkRepository _workRepository;

  GetLibraryWorks(this._workRepository);

  Future<List<Work>> await_() => _workRepository.getWorks();

  Stream<List<Work>> subscribe() => _workRepository.getWorksAsStream();
}

@riverpod
GetLibraryWorks getLibraryWorks(GetLibraryWorksRef ref) =>
    GetLibraryWorks(ref.watch(workRepositoryProvider));
