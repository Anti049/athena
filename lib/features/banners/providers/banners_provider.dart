import 'package:athena/features/banners/providers/error_banner_provider.dart';
import 'package:athena/features/banners/providers/info_banner_provider.dart';
import 'package:athena/features/banners/providers/warning_banner_provider.dart';
import 'package:athena/features/more/providers/more_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banners_provider.g.dart';

@riverpod
class BannersActive extends _$BannersActive {
  @override
  bool build() {
    final error = ref.watch(errorBannerProvider.notifier);
    final info = ref.watch(infoBannerProvider.notifier);
    final warning = ref.watch(warningBannerProvider.notifier);
    final more = ref.watch(morePreferencesProvider);

    return error.hasError ||
        info.hasInfo ||
        warning.hasWarning ||
        more.downloadedOnly().get() ||
        more.incognitoMode().get();
  }

  String get error => ref.watch(errorBannerProvider);
  String get info => ref.watch(infoBannerProvider);
  String get warning => ref.watch(warningBannerProvider);
  bool get downloadedOnly =>
      ref.watch(morePreferencesProvider).downloadedOnly().get();
  bool get incognitoMode =>
      ref.watch(morePreferencesProvider).incognitoMode().get();
}
