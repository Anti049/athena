import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ISearchableSettings {
  const ISearchableSettings();
  String getTitle(BuildContext context);
  Widget getWidget();
  PageRouteInfo getRoute();
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
      appBar: AppBar(
        title: Text(title),
        actions: actions,
      ),
      itemsProvider: preferences,
    );
  }
}
