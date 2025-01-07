import 'package:athena/features/banners/models/banner.dart';
import 'package:athena/features/banners/providers/banners_provider.dart';
import 'package:athena/utils/locale.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BannerFrame extends ConsumerWidget {
  const BannerFrame({
    super.key,
    required this.child,
  });

  final Widget child;

  int _getTopmost(List<Banner> banners) {
    final topmost = banners.indexWhere((element) => element.visible);
    return topmost == -1 ? 0 : topmost;
  }

  List<Widget> _getBanners(
    BuildContext context, {
    required bool downloadedOnly,
    required bool incognitoMode,
    required String info,
    required String warning,
    required String error,
  }) {
    final banners = [
      Banner(
        label: context.locale.more.downloadedOnly.title,
        backgroundColor: context.scheme.tertiary,
        textColor: context.scheme.onTertiary,
        visible: downloadedOnly,
      ),
      Banner(
        label: context.locale.more.incognitoMode.title,
        backgroundColor: context.scheme.secondary,
        textColor: context.scheme.onSecondary,
        visible: incognitoMode,
      ),
    ];

    int topmost = _getTopmost(banners);

    return banners
        .map((e) => e.toWidget(isTopmost: topmost == banners.indexOf(e)))
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bannersActive = ref.watch(bannersActiveProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          ..._getBanners(
            context,
            downloadedOnly: bannersActive.downloadedOnly,
            incognitoMode: bannersActive.incognitoMode,
            info: bannersActive.info,
            warning: bannersActive.warning,
            error: bannersActive.error,
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
