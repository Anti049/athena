import 'package:athena/features/settings/application/common_preference_store.dart';
import 'package:athena/features/settings/application/preference.dart';
import 'package:athena/features/settings/application/preference_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'base_preferences.g.dart';

class BasePreferences {
  BasePreferences(this.preferenceStore);
  final PreferenceStore preferenceStore;

  Preference<bool> downloadedOnly() =>
      preferenceStore.getBool(Preference.appStateKey("downloadedOnly"), false);

  Preference<bool> incognitoMode() =>
      preferenceStore.getBool(Preference.appStateKey("incognitoMode"), false);

  Preference<bool> shownOnboardingFlow() => preferenceStore.getBool(
      Preference.appStateKey("onboardingComplete"), false);
}

@riverpod
BasePreferences basePreferences(BasePreferencesRef ref) =>
    BasePreferences(ref.watch(preferencesProvider));
