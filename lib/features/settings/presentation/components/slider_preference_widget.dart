import 'package:athena/features/settings/providers/preference.dart';
import 'package:athena/features/settings/presentation/components/base_preference_widget.dart';
import 'package:flutter/material.dart';

class SliderPreferenceWidget extends StatelessWidget {
  const SliderPreferenceWidget({
    super.key,
    this.title,
    this.subtitle,
    this.pref,
    this.value,
    this.onChanged,
    this.min = 0.0,
    this.max = 100.0,
    this.step = 1.0,
  });

  final String? title;
  final String? subtitle;
  final Preference<double>? pref;
  final double? value;
  final ValueChanged<double>? onChanged;
  final double min;
  final double max;
  final double step;

  @override
  Widget build(BuildContext context) {
    // Assert that EITHER (with exclusive OR):
    // - pref is not null
    // - value, onChanged, min, and max are not null
    final isPrefNull = pref == null;
    final areOptionsNull = value == null || onChanged == null;
    assert(
      isPrefNull != areOptionsNull ||
          (throw ArgumentError(
            'Either pref or value and onChanged must be provided',
          )),
    );

    double selectedValue = pref?.get() ?? value ?? min;
    final divisions = ((max - min) / step).round();

    return BasePreferenceWidget(
      title: title,
      subcomponent: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0, // TODO: prefsHorizontalPadding
        ),
        child: Slider(
          value: selectedValue,
          onChanged: (newValue) {
            onChanged?.call(newValue);
            pref?.set(newValue);
          },
          min: min,
          max: max,
          divisions: divisions,
        ),
      ),
    );
  }
}
