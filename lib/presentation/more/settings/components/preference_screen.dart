import 'package:collection/collection.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

import 'package:athena/presentation/more/settings/models/preference.dart';
import 'package:athena/presentation/more/settings/components/preference_item.dart'
    as p;
import 'package:athena/presentation/more/settings/components/preference_group_header.dart';

/// Preference Screen composable which contains a list of [Preference] items
/// to be displayed on the preference screen.
///
/// An item can be a single [PreferenceItem] or a group ([PreferenceGroup]).
class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({
    super.key,
    required this.items,
  });

  final List<Preference> items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items
          .mapIndexed(
            (i, preference) {
              switch (preference) {
                case PreferenceGroup():
                  if (preference.enabled) {
                    return [
                      PreferenceGroupHeader(title: preference.title),
                      ...preference.preferenceItems.map((item) {
                        return p.PreferenceItem(
                          item: item,
                        );
                      })
                    ];
                  } else {
                    return <Widget>[];
                  }
                case PreferenceItem():
                  return <Widget>[
                    p.PreferenceItem(
                      item: preference,
                    ),
                  ];
              }
            },
          )
          .flattened
          .toList(),
    );
  }
}
