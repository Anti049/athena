import 'package:athena/core/preference/preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderScaffold extends ConsumerWidget {
  const HeaderScaffold({
    super.key,
    this.appBar,
    required this.body,
  });

  final AppBar? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(preferencesProvider);
    bool showingHeader =
        preferences.downloadedOnly || preferences.incognitoMode;

    return Scaffold(
      primary: !showingHeader,
      appBar: appBar?.copyWith(
        title: appBar?.title,
        leading: appBar?.leading,
        actions: appBar?.actions,
        primary: !showingHeader,
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
