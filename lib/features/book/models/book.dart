import 'dart:io';

import 'package:athena/features/book/models/metadata.dart';

class Book {
  final File sourceFile;
  MetaData? metaData;

  Book(
    this.sourceFile, {
    this.metaData,
  });

  set metadata(MetaData metaData) {
    this.metaData = metaData;
  }
}
