import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item.freezed.dart';

@freezed
class LibraryItem with _$LibraryItem {
  const LibraryItem._();
  const factory LibraryItem({
    required String title,
    @Default(-1) int downloadCount,
    @Default(-1) int unreadCount,
    @Default(false) bool isLocal,
    @Default('') String source,
    Ref? ref,
  }) = _LibraryItem;
}