import 'package:athena/features/settings/providers/preference.dart';

abstract class PreferenceStore {
  Preference<String> getString(String key, [String defaultValue = '']);

  Preference<int> getInt(String key, [int defaultValue = 0]);

  Preference<double> getDouble(String key, [double defaultValue = 0.0]);

  Preference<bool> getBool(String key, [bool defaultValue = false]);

  Preference<Set<String>> getStringSet(
    String key, [
    Set<String> defaultValue = const <String>{},
  ]);

  Preference<T> getObject<T>(
    String key,
    T defaultValue,
    String Function(T) serializer,
    T Function(String) deserializer,
  );

  Map<String, dynamic> getAll();

  Preference<T> getEnum<T extends Enum>(
    String key,
    T defaultValue,
    Iterable<T> values,
  ) =>
      getObject(
        key,
        defaultValue,
        (T e) => e.name,
        (String s) {
          try {
            return values.firstWhere((v) => v.name == s);
          } catch (e) {
            return defaultValue;
          }
        },
      );

  Preference<List<T>> getList<T>(
    String key,
    List<T> defaultValue,
  ) =>
      getObject(
        key,
        defaultValue,
        (List<T> list) => list.map((e) => e.toString()).join(','),
        (String s) => s.split(',').map((e) => defaultValue.first).toList(),
      );
}
