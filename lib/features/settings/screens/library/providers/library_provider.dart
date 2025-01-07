import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:athena/features/settings/screens/library/data/library_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_provider.g.dart';

class LibraryPreferences {
  LibraryPreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<String> defaultCategory() => preferenceStore.getString(
        "defaultCategory",
        defaultValue: 'always_ask',
      );

  Preference<bool> perCategorySort() => preferenceStore.getBool(
        "perCategorySort",
        defaultValue: true,
      );

  Preference<AutomaticUpdate> automaticUpdates() => preferenceStore.getEnum(
        "automaticUpdates",
        AutomaticUpdate.off,
        AutomaticUpdate.values,
      );
}

@riverpod
LibraryPreferences libraryPreferences(LibraryPreferencesRef ref) =>
    LibraryPreferences(ref.watch(preferencesProvider));
