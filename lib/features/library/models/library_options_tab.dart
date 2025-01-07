import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'library_options_tab.freezed.dart';

@freezed
class LibraryOptionsTab with _$LibraryOptionsTab {
  const LibraryOptionsTab._();
  const factory LibraryOptionsTab({
    required String title,
    required IconData icon,
    required Widget content,
  }) = _LibraryOptionsTab;
}
