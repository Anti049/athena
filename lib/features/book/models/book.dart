import 'dart:io';

import 'package:athena/features/book/models/metadata.dart';

class Book {
  final File file;
  Metadata? metadata;

  Book({
    required this.file,
    this.metadata,
  });

  get extension => file.path.split('.').last;
}
