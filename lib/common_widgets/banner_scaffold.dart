import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BannerScaffold extends ConsumerWidget {
  const BannerScaffold({
    super.key,
    this.appBar,
    this.body,
  });

  final AppBar? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool showingBanner = false;

    return Scaffold(
      primary: !showingBanner,
      appBar: appBar?.copyWith(
        title: appBar?.title,
        leading: appBar?.leading,
        actions: appBar?.actions,
        primary: !showingBanner,
        elevation: appBar?.elevation,
      ),
      body: body,
    );
  }
}

extension on AppBar? {
  copyWith({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    required bool primary,
    double? elevation,
  }) {
    return AppBar(
      title: title,
      leading: leading,
      actions: actions,
      primary: primary,
      elevation: elevation,
    );
  }
}
