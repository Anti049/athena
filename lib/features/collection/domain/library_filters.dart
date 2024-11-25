import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_filters.freezed.dart';

@freezed
class LibraryFilters with _$LibraryFilters {
  const LibraryFilters._();
  const factory LibraryFilters({
    required bool? filterDownloaded,
    required bool? filterUnread,
    required bool? filterStarted,
    required bool? filterBookmarked,
    required bool? filterCompleted,
  }) = _LibraryFilters;
}
