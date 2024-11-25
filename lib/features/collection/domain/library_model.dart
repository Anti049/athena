import 'package:athena/features/collection/domain/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

part 'library_model.freezed.dart';

typedef LibraryMap = Map<int, List<LibraryItem>>;

@freezed
class LibraryModel with _$LibraryModel {
  const LibraryModel._();
  const factory LibraryModel({
    @Default({}) LibraryMap libraryItems,
    String? searchQuery,
    @Default([]) List<LibraryItem> selectedItems,
    @Default(false) bool showCategoryTabs,
    @Default(false) bool showWorkCount,
    @Default(false) bool showWorkContinueButton,
    @Default(false) bool hasActiveFilters,
  }) = _LibraryModel;

  bool get isEmpty =>
      libraryItems.isEmpty && searchQuery.isNullOrEmpty && !hasActiveFilters;
  int get itemCount =>
      libraryItems.values.fold(0, (sum, items) => sum + items.length);
}
