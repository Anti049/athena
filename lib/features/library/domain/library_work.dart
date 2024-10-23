import 'package:athena/features/works/domain/works.drift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_work.freezed.dart';

@freezed
class LibraryWork with _$LibraryWork {
  const LibraryWork._();
  const factory LibraryWork({
    required Work work,
    required int category,
    required int totalChapters,
    required int readCount,
    required int bookmarkCount,
    required DateTime latestUpload,
    required DateTime chapterFetchedAt,
    required DateTime lastRead,
  }) = _LibraryWork;

  int get id => work.id;

  int get unreadCount => totalChapters - readCount;
  bool get hasBookmarks => bookmarkCount > 0;
  bool get hasStarted => readCount > 0;
}
