import 'package:animated_visibility/animated_visibility.dart';
import 'package:athena/features/banners/presentation/banner.dart';
import 'package:athena/features/settings/application/appearance_preferences.dart';
import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/presentation/common_components/app_state_banners.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:athena/utils/brightness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BannerScaffold extends ConsumerWidget {
  const BannerScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  bool anyBannerVisible(List<BannerData> banners) {
    return banners.any((b) => b.visible);
  }

  bool isTopBanner(List<BannerData> banners, BannerData bannerData) {
    final visibleBanners = banners.where((b) => b.visible).toList();
    if (visibleBanners.isEmpty ||
        !bannerData.visible ||
        !visibleBanners.contains(bannerData)) {
      return false;
    }
    return visibleBanners.indexOf(bannerData) == 0;
  }

  int getOrder(List<BannerData> banners, BannerData bannerData) {
    return banners.indexOf(bannerData);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get preferences
    final preferences = ref.watch(basePreferencesProvider);
    final downloadedOnly = preferences.downloadedOnly().get();
    final incognitoMode = preferences.incognitoMode().get();

    final banners = [
      BannerData(
        label: context.locale.preferenceDownloadedOnly.title,
        backgroundColor: context.scheme.error,
        textColor: context.scheme.onError,
        visible: downloadedOnly,
        height: 48.0,
        textStyle: context.textTheme.bodyMedium,
      ),
      BannerData(
        label: context.locale.preferenceIncognitoMode.title,
        backgroundColor: context.scheme.primary,
        textColor: context.scheme.onPrimary,
        visible: incognitoMode,
      ),
    ];

    // Calculate icon brightness
    final bannerActive = anyBannerVisible(banners);
    final appBrightness = calculateBrightness(
        context, ref.watch(appearancePreferencesProvider).themeMode().get());
    final iconBrightness = getInverseBrightness(appBrightness);

    Color trueTransparent = Colors.transparent.withOpacity(0.002);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: trueTransparent,
        statusBarIconBrightness: bannerActive ? appBrightness : iconBrightness,
        systemNavigationBarColor:
            trueTransparent, // Manually set opacity just above 0 to get true transparency
        systemNavigationBarIconBrightness: iconBrightness,
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          for (final bannerData in banners)
            bannerData.toWidget(
              top: isTopBanner(banners, bannerData),
            ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
