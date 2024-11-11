import 'package:athena/features/library/models/library_work.dart';
import 'package:athena/features/works/repositories/work_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_library_works.g.dart';

class GetLibraryWorks {
  final WorkRepository _workRepository;

  GetLibraryWorks(this._workRepository);

  Future<List<LibraryWork>> await_() => _workRepository.getWorks();

  Stream<List<LibraryWork>> subscribe() => _workRepository.getWorksAsStream();
}

@riverpod
GetLibraryWorks getLibraryWorks(GetLibraryWorksRef ref) =>
    GetLibraryWorks(ref.watch(workRepositoryProvider));
