import 'package:athena/features/works/models/work.dart';
import 'package:athena/utils/string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'library_item.freezed.dart';

@freezed
class LibraryItem with _$LibraryItem {
  const LibraryItem._();
  const factory LibraryItem({
    required int itemID,
    required Work work,
    @Default(-1) int downloadCount,
    @Default(-1) int unreadCount,
    Ref? ref,
  }) = _LibraryItem;

  Future<bool> matches(String constraint) async {
    return work.title.containsIgnoreCase(constraint);
  }
}
