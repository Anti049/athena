import 'package:athena/features/library/models/library_work.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item.freezed.dart';

@freezed
class LibraryItem with _$LibraryItem {
  const LibraryItem._();
  const factory LibraryItem({
    required int itemID,
    required LibraryWork libraryWork,
    @Default(-1) int downloadCount,
    @Default(-1) int unreadCount,
    @Default(false) bool isLocal,
    @Default('') String source,
    Ref? ref,
  }) = _LibraryItem;

  Future<bool> matches(String constraint) async {
    return libraryWork.work.title.containsIgnoreCase(constraint);
  }
}

extension on String {
  bool containsIgnoreCase(String string) =>
      toLowerCase().contains(string.toLowerCase());
}
