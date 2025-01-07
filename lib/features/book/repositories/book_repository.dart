import 'package:athena/features/book/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract interface class BookRepository {
  BookRepository({
    required this.format,
    required this.extensions,
  });

  final String format;
  final List<String> extensions;

  // Read a file
  Future<Book> readBook(String path);
  Book readBookSync(String path);
  // Write a file
  Future<void> writeBook(Book book);
  void writeBookSync(Book book);
}

@riverpod
BookRepository bookRepository(Ref ref) {
  throw UnimplementedError();
}
