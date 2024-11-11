// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:athena/features/book/services/base_reader.dart';
import 'package:athena/features/book/models/book.dart';
import 'package:athena/features/book/models/metadata.dart';
import 'package:xml/xml.dart';

class EpubReader extends BaseReader {
  EpubReader() : super(format: 'epub', extensions: ['epub']);

  @override
  Future<Book> read({required File file}) async {
    final Book book = Book(file);

    // Read zip file from disk
    var bytes = await file.readAsBytes();
    // Decode the Zip file
    var archive = ZipDecoder().decodeBytes(bytes);
    // Read files from the Zip file
    var contentFile =
        archive.firstWhere((file) => file.name.contains('content.opf'));
    String content = String.fromCharCodes(contentFile.content);
    var contentXML = XmlDocument.parse(content);

    // Get title
    // - package > metadata > dc:title
    final title =
        contentXML.findAllElements('dc:title').map((node) => node.text).first;

    // Get author(s)
    final authors = contentXML
        .findAllElements('dc:creator')
        .map((node) => node.text)
        .toList();

    // Get summary
    final summary = contentXML
        .findAllElements('dc:description')
        .first
        .text
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>');

    // Set metadata
    book.metaData = MetaData(
      title: title,
      authors: authors,
      summary: summary,
    );

    return book;
  }

  @override
  Book readSync({required File file}) {
    throw UnimplementedError();
  }
}
