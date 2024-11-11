import 'dart:io';

import 'package:athena/features/book/services/base_reader.dart';
import 'package:athena/features/book/services/epub/epub_reader.dart';
import 'package:athena/features/book/models/book.dart';

List<BaseReader> readers = [
  EpubReader(),
];

BaseReader getReader(File file) {
  return readers.firstWhere((reader) => reader.canRead(file));
}

Future<Book> readBook(File file) {
  final reader = getReader(file);
  return reader.read(file: file);
}

Book readBookSync(File file) {
  final reader = getReader(file);
  return reader.readSync(file: file);
}
