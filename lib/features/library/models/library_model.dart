import 'package:athena/features/library/models/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

part 'library_model.freezed.dart';

typedef CategoryID = int;
typedef LibraryMap = Map<CategoryID, List<LibraryItem>>;

@freezed
class LibraryModel with _$LibraryModel {
  const LibraryModel._();

  const factory LibraryModel({
    @Default([]) List<LibraryItem> libraryItems,
    String? searchQuery,
    @Default([]) List<LibraryItem> selectedItems,
    @Default(false) bool showCategoryTabs,
    @Default(false) bool showWorkCount,
    @Default(false) bool showWorkContinueButton,
    @Default(false) bool hasActiveFilters,
  }) = _LibraryModel;

  bool get isEmpty =>
      libraryItems.isEmpty && searchQuery.isNullOrEmpty && !hasActiveFilters;
  int get itemCount => libraryItems.length;
}
