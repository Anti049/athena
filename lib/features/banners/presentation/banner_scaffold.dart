import 'package:athena/features/banners/domain/banner_model.dart';
import 'package:athena/features/banners/providers/banner_provider.dart'
    show bannerProvider;
import 'package:athena/features/settings/providers/appearance_preferences.dart';
import 'package:athena/localization/translations.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class BannerScaffold extends ConsumerWidget {
  const BannerScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  bool anyBannerVisible(List<BannerModel> banners) {
    return banners.any((b) => b.visible);
  }

  bool isTopBanner(List<BannerModel> banners, BannerModel bannerData) {
    final visibleBanners = banners.where((b) => b.visible).toList();
    if (visibleBanners.isEmpty ||
        !bannerData.visible ||
        !visibleBanners.contains(bannerData)) {
      return false;
    }
    return visibleBanners.indexOf(bannerData) == 0;
  }

  int getOrder(List<BannerModel> banners, BannerModel bannerData) {
    return banners.indexOf(bannerData);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get preferences
    final data = ref.watch(bannerProvider);

    final banners = [
      BannerModel(
        label: 'WARNING', // TODO: Localize this
        backgroundColor: context.scheme.error,
        textColor: context.scheme.onError,
        visible: data.warning,
        height: 64.0,
        textStyle: context.text.titleMedium,
        leftWidget: Icon(
          Symbols.warning,
          color: context.scheme.onError,
        ),
        rightWidget: Icon(
          Symbols.warning,
          color: context.scheme.onError,
        ),
        bottomWidget: FractionallySizedBox(
          widthFactor: 0.5, // TODO: Make this responsive
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 48.0,
            ),
            child: Center(
              child: Text(
                data.warningLabel ?? '',
                textAlign: TextAlign.center,
                style: context.text.bodyMedium?.copyWith(
                  color: context.scheme.onError,
                ),
              ),
            ),
          ),
        ),
        dismiss: () {
          data.setWarning(false, null);
        },
      ),
      BannerModel(
        label: 'Indexing', // TODO: Localize this
        backgroundColor: context.scheme.secondary,
        textColor: context.scheme.onSecondary,
        visible: data.indexing,
        topWidget: Column(
          children: [
            SizedBox(
              height: 24.0,
              width: 24.0,
              child: CircularProgressIndicator(
                color: context.scheme.onSecondary,
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
      BannerModel(
        label: context.locale.more.downloadedOnly.title,
        backgroundColor: context.scheme.tertiary,
        textColor: context.scheme.onTertiary,
        visible: data.downloadedOnly,
      ),
      BannerModel(
        label: context.locale.more.incognitoMode.title,
        backgroundColor: context.scheme.primary,
        textColor: context.scheme.onPrimary,
        visible: data.incognitoMode,
      ),
    ];

    // Calculate icon brightness
    final bannerActive = anyBannerVisible(banners);
    final appBrightness = calculateBrightness(
        context, ref.watch(appearancePreferencesProvider).themeMode().get());
    final iconBrightness = appBrightness.invert;

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
