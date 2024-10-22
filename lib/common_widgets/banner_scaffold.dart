import 'package:athena/features/settings/application/base_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BannerScaffold extends ConsumerWidget {
  const BannerScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  final AppBar? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Load preferences
    final preferences = ref.watch(basePreferencesProvider);
    final downloadedOnly = preferences.downloadedOnly().get();
    final incognitoMode = preferences.incognitoMode().get();
    bool showingBanner = downloadedOnly || incognitoMode;

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
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
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
