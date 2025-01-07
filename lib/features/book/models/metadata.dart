import 'package:athena/features/story/models/author.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';

typedef MetadataMap = Map<String, dynamic>;

@freezed
class Metadata with _$Metadata {
  const Metadata._();

  const factory Metadata({
    required String title,
    required List<Author> authors,
    required String description,
    required MetadataMap metadata,
  }) = _Metadata;

  MetadataMap getData({
    List<String> specificKeys = const [],
    List<String> excludeKeys = const [],
  }) {
    // Get ALL the data
    final sourceMap = {
      'title': title,
      'authors': authors.map((author) => author.toJson()).toList(),
      'description': description,
      ...metadata,
    };
    // Remove excluded keys
    excludeKeys.forEach(sourceMap.remove);
    // If specific keys are provided, only return those
    if (specificKeys.isNotEmpty) {
      final specificMap = <String, dynamic>{};
      for (final key in specificKeys) {
        if (sourceMap.containsKey(key)) {
          specificMap[key] = sourceMap[key];
        }
      }
      return specificMap;
    }
    return sourceMap;
  }

  dynamic get(String key) {
    final data = getData();
    if (data.containsKey(key)) {
      return data[key];
    }
    return null;
  }

  dynamic operator [](String key) => get(key);
  void operator []=(String key, dynamic value) {
    metadata[key] = value;
  }
}
