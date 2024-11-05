import 'package:athena/common_widgets/banner_scaffold.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_screen.dart';
import 'package:flutter/material.dart';

class PreferenceScaffold extends StatelessWidget {
  const PreferenceScaffold({
    super.key,
    this.title,
    this.appBar,
    required this.itemsProvider,
  });

  final String? title;
  final AppBar? appBar;
  final List<Preference> Function() itemsProvider;

  @override
  Widget build(BuildContext context) {
    // Assert that either title or appBar is provided
    assert(title != null || appBar != null,
        'Either title or appBar must be provided.');
    assert(title == null || appBar == null,
        'Only one of title or appBar can be provided.');

    return BannerScaffold(
      appBar: appBar ??
          AppBar(
            title: Text(
              title!,
            ),
          ),
      body: PreferenceScreen(
        items: itemsProvider(),
      ),
    );
  }
}
