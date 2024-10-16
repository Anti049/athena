import 'package:athena/presentation/common_components/header_scaffold.dart';
import 'package:athena/presentation/more/settings/components/preference_screen.dart';
import 'package:athena/presentation/more/settings/models/preference.dart';
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
    return HeaderScaffold(
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
