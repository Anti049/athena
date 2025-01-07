import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:athena/features/book/models/book.dart';
import 'package:athena/features/book/repositories/book_repository.dart';
import 'package:athena/features/book/models/metadata.dart';
import 'package:athena/features/story/models/author.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xml/xml.dart';

part 'epub_book_repository.g.dart';

class EpubBookRepository implements BookRepository {
  @override
  Future<Book> readBook(String path) async {
    final file = File(path);
    final Book book = Book(file: file);

    // Read zip file from disk
    var bytes = await file.readAsBytes();
    // Unzip file
    var archive = ZipDecoder().decodeBytes(bytes);
    // Read content.opf file
    var contentFile = archive
        .firstWhere((file) => file.name.contains('content.opf'), orElse: () {
      throw Exception('content.opf not found');
    });
    String content = String.fromCharCodes(contentFile.content);
    var contentXML = XmlDocument.parse(content);

    // Read metadata
    // - Title
    final title = contentXML.findAllElements('dc:title').first.innerText;
    // - Author
    final authors = contentXML.findAllElements('dc:creator').map((node) {
      return Author(name: node.innerText);
    }).toList();
    // - Description (optional)
    String description = '';
    try {
      description =
          contentXML.findAllElements('dc:description').first.innerText;
    } catch (e) {
      // Do nothing
    }

    // Write metadata
    book.metadata = Metadata(
      title: title,
      authors: authors,
      description: description,
      metadata: {},
    );

    return book;
  }

  @override
  Book readBookSync(String path) {
    // TODO: implement readBookSync
    throw UnimplementedError();
  }

  @override
  Future<void> writeBook(Book book) async {
    // TODO: implement writeBook
    throw UnimplementedError();
  }

  @override
  void writeBookSync(Book book) {
    // TODO: implement writeBookSync
  }

  @override
  // TODO: implement extensions
  List<String> get extensions => ['epub'];

  @override
  // TODO: implement format
  String get format => 'epub';
}

@riverpod
BookRepository epubBookRepository(Ref ref) {
  return EpubBookRepository();
}
