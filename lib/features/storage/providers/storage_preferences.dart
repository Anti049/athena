import 'package:athena/features/settings/providers/common_preference_store.dart';
import 'package:athena/features/settings/providers/preference.dart';
import 'package:athena/features/settings/providers/preference_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_preferences.g.dart';

class StoragePreferences {
  StoragePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<String> storageLocation() => preferenceStore.getString(
        Preference.appStateKey("storageLocation"),
        "",
      );

  Preference<List<String>> storageFolders() => preferenceStore.getList(
        Preference.appStateKey("storageFolders"),
        [],
      );
}

@riverpod
StoragePreferences storagePreferences(StoragePreferencesRef ref) =>
    StoragePreferences(ref.watch(preferencesProvider));
