import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_storage_provider.g.dart';

class DataStoragePreferences {
  DataStoragePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<String> storageLocation() =>
      preferenceStore.getString('storageLocation', defaultValue: '');

  Preference<List<String>> storageFolders() => preferenceStore.getList(
        "storageFolders",
        [],
      );
}

@riverpod
DataStoragePreferences dataStoragePreferences(DataStoragePreferencesRef ref) =>
    DataStoragePreferences(ref.watch(preferencesProvider));
