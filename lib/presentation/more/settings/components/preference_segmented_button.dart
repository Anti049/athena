import 'package:athena/presentation/more/settings/components/base_preference_widget.dart';
import 'package:flutter/material.dart';

class PreferenceSegment {
  const PreferenceSegment({
    required this.value,
    required this.label,
  });

  final dynamic value;
  final String label;
}

class PreferenceSegmentedButton extends StatelessWidget {
  const PreferenceSegmentedButton({
    super.key,
    required this.value,
    required this.options,
    required this.onChanged,
  });

  final dynamic value;
  final List<PreferenceSegment> options;
  final ValueChanged<dynamic> onChanged;

  @override
  Widget build(BuildContext context) {
    return BasePreferenceWidget(
      subcomponent: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0, // TODO: prefsHorizontalPadding
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
            value,
          },
          onSelectionChanged: (newSelection) => onChanged(newSelection.first),
        ),
      ),
    );
  }
}
