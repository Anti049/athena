import 'package:hive_flutter/hive_flutter.dart';
import 'package:athena/features/settings/application/preference.dart' as base;

sealed class CommonPreference<T> extends base.Preference<T> {
  CommonPreference(this.preferences, this.key_, this.defaultValue_);

  final Box preferences;
  final String key_;
  final T defaultValue_;

  T read(Box preferences, String key, T defaultValue);

  void write(String key, T value);

  @override
  String key() => key_;

  @override
  T get() {
    try {
      return read(preferences, key_, defaultValue_);
    } catch (e) {
      delete();
      return defaultValue_;
    }
  }

  @override
  void set(T value) => write(key_, value);

  @override
  bool isSet() =>
      preferences.containsKey(key_); // preferences.getKeys().contains(key_);

  @override
  void delete() async => preferences.delete(key_);

  @override
  T defaultValue() => defaultValue_;

  Stream<T> _watch() => Stream.value(get());

  @override
  Stream<T> changes() => _watch();
}

class StringPrimitive extends CommonPreference<String> {
  StringPrimitive(super.preferences, super.key_, super.defaultValue_);

  @override
  String read(
    Box preferences,
    String key,
    String defaultValue,
  ) =>
      preferences.get(key, defaultValue: defaultValue);

  @override
  Future<void> write(String key, String value) => preferences.put(key, value);
}

class IntPrimitive extends CommonPreference<int> {
  IntPrimitive(super.preferences, super.key_, super.defaultValue_);

  @override
  int read(
    Box preferences,
    String key,
    int defaultValue,
  ) =>
      preferences.get(key, defaultValue: defaultValue);

  @override
  Future<void> write(String key, int value) => preferences.put(key, value);
}

class DoublePrimitive extends CommonPreference<double> {
  DoublePrimitive(super.preferences, super.key_, super.defaultValue_);

  @override
  double read(
    Box preferences,
    String key,
    double defaultValue,
  ) =>
      preferences.get(key, defaultValue: defaultValue);

  @override
  Future<void> write(String key, double value) => preferences.put(key, value);
}

class BoolPrimitive extends CommonPreference<bool> {
  BoolPrimitive(super.preferences, super.key_, super.defaultValue_);

  @override
  bool read(
    Box preferences,
    String key,
    bool defaultValue,
  ) =>
      preferences.get(key, defaultValue: defaultValue);

  @override
  Future<void> write(String key, bool value) => preferences.put(key, value);
}

class StringSetPrimitive extends CommonPreference<Set<String>> {
  StringSetPrimitive(super.preferences, super.key_, super.defaultValue_);

  @override
  Set<String> read(
    Box preferences,
    String key,
    Set<String> defaultValue,
  ) =>
      preferences.get(key, defaultValue: defaultValue.toList()).toSet();

  @override
  Future<void> write(String key, Set<String> value) =>
      preferences.put(key, value.toList());
}

class ObjectPrimitive<T> extends CommonPreference<T> {
  ObjectPrimitive(
    super.preferences,
    super.key_,
    super.defaultValue_,
    this.serializer,
    this.deserializer,
  );

  final String Function(T) serializer;
  final T Function(String) deserializer;

  @override
  T read(Box preferences, String key, T defaultValue) {
    try {
      final pref = preferences.get(key, defaultValue: '');
      return pref != '' ? deserializer(pref) : defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  @override
  Future<void> write(String key, T value) {
    final pref = serializer(value);
    return preferences.put(key, pref);
  }
}

class EnumPrimitive<Enum> extends CommonPreference<Enum> {
  EnumPrimitive(
    super.preferences,
    super.key_,
    super.defaultValue_,
    this.values,
  );

  final Iterable<Enum> values;

  @override
  Enum read(Box preferences, String key, Enum defaultValue) {
    try {
      final pref = preferences.get(key, defaultValue: '');
      return pref != ''
          ? values.firstWhere((v) => v.toString() == pref)
          : defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  @override
  Future<void> write(String key, Enum value) =>
      preferences.put(key, value.toString());

  @override
  Stream<Enum> _watch() {
    return Stream.value(read(preferences, key_, defaultValue_));
  }
}
