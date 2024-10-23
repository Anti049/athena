import 'package:athena/features/works/data/database.drift.dart';
import 'package:dartx/dartx_io.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database.g.dart';

@DriftDatabase(
  include: {
    '../domain/works.drift.dart',
  },
)
class Database extends $Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();

        // Add default category if not already
        // await into(categories).insert(
        //   CategoriesCompanion.insert(
        //     id: const Value(0),
        //     name: '',
        //     sort: -1,
        //     flags: 0,
        //   ),
        //   mode: InsertMode.insertOrIgnore,
        // );
      },
    );
  }

  @override
  Iterable<TableInfo<Table, dynamic>> get allTables {
    return [
      works,
    ];
  }
}

@riverpod
Database database(DatabaseRef ref) {
  final db = Database();
  ref.onDispose(db.close);

  return db;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = dbFolder.file('db.sqlite');
    return NativeDatabase.createInBackground(file);
  });
}
