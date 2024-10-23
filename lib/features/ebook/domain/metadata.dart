import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';

typedef MetaDataMap = Map<String, dynamic>;

@freezed
class MetaData with _$MetaData {
  const MetaData._();

  const factory MetaData({
    required String title,
    required List<dynamic> authors,
    required String summary,
    @Default({}) MetaDataMap extraData,
  }) = _MetaData;

  MetaDataMap getData({
    List<String> keys = const [],
    List<String> excludeKeys = const [],
  }) {
    // Get all data
    final sourceMap = {
      'title': title,
      'authors': authors,
      'summary': summary,
      ...extraData,
    };
    // Exclude unwanted keys
    final excluded = <String, dynamic>{};
    for (final key in sourceMap.keys) {
      if (!excludeKeys.contains(key)) {
        excluded[key] = sourceMap[key];
      }
    }
    // Get only wanted keys (if defined)
    // If no keys are defined, return all data
    if (keys.isEmpty) {
      return excluded;
    }
    final data = <String, dynamic>{};
    for (final key in keys) {
      if (sourceMap.containsKey(key)) {
        data[key] = sourceMap[key];
      }
    }
    return data;
  }

  dynamic get(String key) {
    final data = getData(keys: [key]);
    return data[key];
  }

  dynamic operator [](String key) => get(key);
  void operator []=(String key, dynamic value) {
    extraData[key] = value;
  }
}
