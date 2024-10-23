import 'dart:io';

import 'package:athena/features/ebook/domain/metadata.dart';

class Book {
  final File sourceFile;
  MetaData? metaData;

  Book(
    this.sourceFile, {
    this.metaData,
  });
}
