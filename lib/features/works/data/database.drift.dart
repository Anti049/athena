import 'package:athena/features/works/domain/works.drift.dart';
import 'package:drift/drift.dart';

abstract class $Database extends GeneratedDatabase {
  $Database(super.e);

  late final Works works = Works(this);
}
