import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:athena/features/more/settings/models/preference.dart';

part 'preference_provider.g.dart';

class PreferenceStore {
  final Box _preferences;

  PreferenceStore(this._preferences);

  Preference<String> getString(String key, {String defaultValue = ''}) =>
      StringPreference(key, _preferences, defaultValue);

  Preference<int> getInt(String key, {int defaultValue = 0}) =>
      IntPreference(key, _preferences, defaultValue);

  Preference<bool> getBool(String key, {bool defaultValue = false}) =>
      BoolPreference(key, _preferences, defaultValue);

  Preference<double> getDouble(String key, {double defaultValue = 0.0}) =>
      DoublePreference(key, _preferences, defaultValue);

  Preference<Set<String>> getStringSet(
    String key, {
    Set<String> defaultValue = const {},
  }) =>
      StringSetPreference(key, _preferences, defaultValue);

  Preference<T> getObject<T>(
    String key,
    T defaultValue,
    String Function(T) serializer,
    T Function(String) deserializer,
  ) =>
      ObjectPreference(
          key, _preferences, defaultValue, serializer, deserializer);

  Preference<Enum> getEnum<Enum>(
    String key,
    Enum defaultValue,
    Iterable<Enum> values,
  ) =>
      EnumPreference<Enum>(key, _preferences, defaultValue, values);
}

@riverpod
class Preferences extends _$Preferences {
  @override
  PreferenceStore build() {
    final box = Hive.box('preferences');
    box.watch().listen((event) {
      notifyListeners();
    });
    return PreferenceStore(box);
  }

  void notifyListeners() {
    state = PreferenceStore(Hive.box('preferences'));
  }
}
