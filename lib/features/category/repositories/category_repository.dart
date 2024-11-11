import 'package:athena/features/category/models/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository.g.dart';

abstract interface class CategoryRepository {
  Future<Category?> get(int id);
  Future<List<Category>> getAll();
  Stream<List<Category>> getAllAsStream();
  Future<List<Category>> getCategoriesByWorkID(int workID);
  Stream<List<Category>> getCategoriesByWorkIDAsStream(int workID);
  Future<void> insert(Category category);
  // Future<void> updatePartial(CategoryUpdate update);
  // Dart does not support function overloading,
  // i.e., same function name, different params :(
  // https://github.com/dart-lang/language/issues/1122
  // Future<void> updatePartialMultiple(List<CategoryUpdate> updates);
  Future<void> updateAllFlags(int? flags);
  Future<void> delete(int categoryId);
}

@riverpod
CategoryRepository categoryRepository(CategoryRepositoryRef ref) =>
    throw UnimplementedError();
