import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/providers/preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'more_preferences.g.dart';

class MorePreferences {
  MorePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<bool> downloadedOnly() => preferenceStore.getBool(
        "downloadedOnly",
        defaultValue: false,
      );

  Preference<bool> incognitoMode() => preferenceStore.getBool(
        "incognitoMode",
        defaultValue: false,
      );
}

@riverpod
MorePreferences morePreferences(MorePreferencesRef ref) =>
    MorePreferences(ref.watch(preferencesProvider));
