import 'package:athena/features/settings/domain/preference.dart';
import 'package:athena/features/settings/presentation/components/preference_group_header.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:athena/features/settings/presentation/components/preference_item.dart'
    as p;

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
