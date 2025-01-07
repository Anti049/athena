import 'package:athena/features/book/models/book.dart';
import 'package:athena/features/book/repositories/book_repository.dart';
import 'package:athena/features/book/repositories/epub_book_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_service.g.dart';

class BookService {
  BookService({
    required this.ref,
  });

  final Ref ref;

  Future<Book> readBook(String path) async {
    final repository = getRepository(getExtension(path));
    return await repository.readBook(path);
  }

  String getExtension(String path) {
    return path.split('.').last;
  }

  BookRepository getRepository(String extension) {
    if (extension == 'epub') {
      return ref.read(epubBookRepositoryProvider);
    }
    throw Exception('Unsupported extension');
  }
}

@riverpod
BookService bookService(Ref ref) {
  return BookService(ref: ref);
}
