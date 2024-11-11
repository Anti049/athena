import 'package:athena/features/category/repositories/category_repository.dart';
import 'package:athena/features/category/models/category.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_impl.g.dart';

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final int typeId = 0;

  @override
  Category read(BinaryReader reader) {
    return Category(
      id: reader.read(),
      name: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    writer.write(obj.id);
    writer.write(obj.name);
  }
}

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl() {
    Hive.registerAdapter(CategoryAdapter());
    initialize();
  }

  void initialize() async {
    db = await Hive.openBox('categories');
  }

  late Box db;

  @override
  Future<Category?> get(int id) {
    final categoryID = 'category_$id';
    return Future.value(db.get(categoryID));
  }

  @override
  Future<List<Category>> getAll() {
    final categoryIDs = db.keys.where((key) => key.startsWith('category_'));
    return Future.value(
        categoryIDs.map((id) => db.get(id) as Category).toList());
  }

  @override
  Stream<List<Category>> getAllAsStream() {
    return db.watch().map((event) {
      final categoryIDs = db.keys.where((key) => key.startsWith('category_'));
      return categoryIDs.map((id) => db.get(id) as Category).toList();
    });
  }

  @override
  Future<List<Category>> getCategoriesByWorkID(int workID) {
    // TODO: implement getCategoriesByWorkID
    throw UnimplementedError();
  }

  @override
  Stream<List<Category>> getCategoriesByWorkIDAsStream(int workID) {
    // TODO: implement getCategoriesByWorkIDAsStream
    throw UnimplementedError();
  }

  @override
  Future<void> insert(Category category) {
    final categoryID = 'category_${category.id}';
    return db.put(categoryID, category);
  }

  @override
  Future<void> updateAllFlags(int? flags) {
    // TODO: implement updateAllFlags
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int categoryId) {
    final categoryID = 'category_$categoryId';
    return db.delete(categoryID);
  }
}

@riverpod
CategoryRepository categoryRepositoryImpl(CategoryRepositoryImplRef ref) =>
    CategoryRepositoryImpl();
