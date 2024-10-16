import 'package:athena/presentation/more/settings/components/preference_scaffold.dart';
import 'package:athena/presentation/more/settings/models/preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// There might be a better way to handle this while remaining standard with
// Flutter.
abstract class ISearchableSettings {
  const ISearchableSettings();
  String getTitle(BuildContext context);
  Widget getWidget();
  List<Preference> getPreferences(BuildContext context, WidgetRef ref);
}

class SearchableSettings extends StatelessWidget {
  const SearchableSettings({
    super.key,
    required this.title,
    required this.preferences,
    this.actions = const [],
  });

  final String title;
  final List<Preference> Function() preferences;
  final List<Widget> actions;

  static String? highlightKey;

  @override
  Widget build(BuildContext context) {
    return PreferenceScaffold(
      title: title,
      actions: actions,
      itemsProvider: preferences,
    );
  }
}
