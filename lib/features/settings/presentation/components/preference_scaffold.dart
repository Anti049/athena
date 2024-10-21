import 'package:athena/common_widgets/banner_scaffold.dart';
import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_screen.dart';
import 'package:flutter/material.dart';

class PreferenceScaffold extends StatelessWidget {
  const PreferenceScaffold({
    super.key,
    required this.title,
    this.actions = const [],
    required this.itemsProvider,
  });

  final String title;
  final List<Widget> actions;
  final List<Preference> Function() itemsProvider;

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions,
      ),
      body: PreferenceScreen(
        items: itemsProvider(),
      ),
    );
  }
}
