import 'dart:io';

import 'package:athena/features/book/models/book.dart';

abstract class BaseReader {
  const BaseReader({
    required this.format,
    required this.extensions,
  });

  final String format;
  final List<String> extensions;

  bool canRead(File file) {
    return extensions.contains(file.path.split('.').last);
  }

  Future<Book> read({
    required File file,
  });

  Book readSync({
    required File file,
  });
}
