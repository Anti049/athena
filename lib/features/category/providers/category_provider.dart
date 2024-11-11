import 'package:athena/features/category/repositories/category_repository.dart';
import 'package:athena/features/category/models/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

class Categories {
  final CategoryRepository repository;

  Categories(this.repository);

  Stream<List<Category>> subscribe([int? workID]) => workID != null
      ? repository.getCategoriesByWorkIDAsStream(workID)
      : repository.getAllAsStream();

  Future<List<Category>> await_([int? workID]) => workID != null
      ? repository.getCategoriesByWorkID(workID)
      : repository.getAll();
}

@riverpod
Categories categories(CategoriesRef ref) =>
    Categories(ref.watch(categoryRepositoryProvider));
