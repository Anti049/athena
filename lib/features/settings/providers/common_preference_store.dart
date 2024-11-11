import 'package:athena/features/settings/providers/common_preference.dart';
import 'package:athena/features/settings/providers/preference_store.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:athena/features/settings/providers/preference.dart' as base;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'common_preference_store.g.dart';

class CommonPreferenceStore extends PreferenceStore {
  CommonPreferenceStore(this.prefs);
  final Box prefs;

  @override
  base.Preference<String> getString(String key, [String defaultValue = '']) =>
      StringPrimitive(prefs, key, defaultValue);

  @override
  base.Preference<int> getInt(String key, [int defaultValue = 0]) =>
      IntPrimitive(prefs, key, defaultValue);

  @override
  base.Preference<double> getDouble(String key, [double defaultValue = 0.0]) =>
      DoublePrimitive(prefs, key, defaultValue);

  @override
  base.Preference<bool> getBool(String key, [bool defaultValue = false]) =>
      BoolPrimitive(prefs, key, defaultValue);

  @override
  base.Preference<Set<String>> getStringSet(
    String key, [
    Set<String> defaultValue = const {},
  ]) =>
      StringSetPrimitive(prefs, key, defaultValue);

  @override
  base.Preference<T> getObject<T>(
    String key,
    T defaultValue,
    String Function(T) serializer,
    T Function(String) deserializer,
  ) =>
      ObjectPrimitive(prefs, key, defaultValue, serializer, deserializer);

  // streaming_shared_preferences has no generic get()
  // For now, haphazardly use getString() as we haven't seen this function in use yet
  @override
  Map<String, dynamic> getAll() => {
        for (final k in prefs.keys) k: prefs.get(k, defaultValue: '').getValue()
      };
}

@riverpod
class Preferences extends _$Preferences {
  @override
  CommonPreferenceStore build() {
    final preferences = Hive.box('preferences');

    final store = CommonPreferenceStore(preferences);
    preferences.watch().listen((event) {
      notifyListeners();
    });
    return store;
  }

  void notifyListeners() {
    final preferences = Hive.box('preferences');

    state = CommonPreferenceStore(preferences);
  }
}
