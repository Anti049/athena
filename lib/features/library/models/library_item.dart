import 'package:athena/features/story/models/story.dart';
import 'package:athena/utils/string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item.freezed.dart';

@freezed
class LibraryItem with _$LibraryItem {
  const LibraryItem._();

  const factory LibraryItem({
    required int itemID,
    required Story story,
    @Default(-1) int downloadCount,
    @Default(-1) int unreadCount,
  }) = _LibraryItem;

  bool matches(String constraint) {
    return story.title.containsIgnoreCase(constraint);
  }
}
