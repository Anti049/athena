import 'package:athena/features/settings/application/preference.dart';
import 'package:athena/features/settings/presentation/components/base_preference_widget.dart';
import 'package:flutter/material.dart';

class PreferenceSegment {
  const PreferenceSegment({
    required this.value,
    required this.label,
  });

  final dynamic value;
  final String label;
}

class SegmentedButtonPreferenceWidget extends StatelessWidget {
  const SegmentedButtonPreferenceWidget({
    super.key,
    this.title,
    this.pref,
    this.value,
    required this.options,
    this.onChanged,
  });

  final String? title;
  final Preference<dynamic>? pref;
  final dynamic value;
  final List<PreferenceSegment> options;
  final ValueChanged<dynamic>? onChanged;

  @override
  Widget build(BuildContext context) {
    // Assert that EITHER (with exclusive OR):
    // - pref is not null
    // - value, options, and onChanged are not null
    final isPrefNull = pref == null;
    final areOptionsNull = value == null || onChanged == null;
    assert(isPrefNull != areOptionsNull ||
        (throw ArgumentError(
            'Either pref or value and onChanged must be provided')));

    final selectedValue = pref?.get() ?? value;

    return BasePreferenceWidget(
      title: title,
      subcomponent: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0, // TODO: prefsHorizontalPadding
        ),
        child: SegmentedButton(
          segments: options.map(
            (e) {
              return ButtonSegment(
                value: e.value,
                label: Text(e.label),
              );
            },
          ).toList(),
          selected: {
            selectedValue,
          },
          onSelectionChanged: (newSelection) {
            if (pref != null) {
              pref?.set(newSelection.first);
            } else {
              onChanged!(newSelection.first);
            }
          },
        ),
      ),
    );
  }
}
