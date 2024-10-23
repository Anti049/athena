import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_provider.g.dart';

class BannerData {
  BannerData(BasePreferences preferenceStore) {
    downloadedOnly = preferenceStore.downloadedOnly().get();
    incognitoMode = preferenceStore.incognitoMode().get();
    warning = false;
    indexing = false;
  }

  late bool downloadedOnly;
  late bool incognitoMode;
  late bool warning;
  String? warningLabel;
  late bool indexing;

  bool get active => downloadedOnly || incognitoMode || warning || indexing;

  void setWarning(bool value, String? label) {
    warning = value;
    warningLabel = label;
  }
}

@riverpod
BannerData bannerData(BannerDataRef ref) =>
    BannerData(ref.watch(basePreferencesProvider));
