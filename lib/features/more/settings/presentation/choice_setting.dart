import 'package:athena/features/more/settings/models/preference.dart';
import 'package:athena/features/more/settings/models/setting.dart';
import 'package:athena/features/more/settings/presentation/base_setting.dart';
import 'package:flutter/material.dart';

class ChoiceSettingWidget extends StatelessWidget {
  const ChoiceSettingWidget({
    super.key,
    this.title,
    required this.preference,
    required this.choices,
    this.enabled = true,
  });

  final String? title;
  final Preference<dynamic> preference;
  final List<Choice> choices;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return BaseSettingWidget(
      title: title,
      subcomponent: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0, // TODO: prefsHorizontalPadding
        ),
        child: SegmentedButton(
          segments: choices.map(
            (e) {
              return ButtonSegment(
                value: e.value,
                label: Text(e.label),
              );
            },
          ).toList(),
          selected: {
            preference.get() ?? choices.first.value,
          },
          onSelectionChanged: (newSelection) {
            if (enabled) preference.set(newSelection.first);
          },
        ),
      ),
    );
  }
}
