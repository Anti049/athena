import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/components/base_setting.dart';
import 'package:flutter/material.dart';

class SliderSettingWidget extends StatelessWidget {
  const SliderSettingWidget({
    super.key,
    this.title,
    this.subtitle,
    required this.preference,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions = 100,
    this.enabled = true,
    this.dense = false,
  });

  final String? title;
  final String? subtitle;
  final Preference<double> preference;
  final double min;
  final double max;
  final int divisions;
  final bool enabled;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    return BaseSettingWidget(
      title: title,
      subtitle: dense ? subtitle : null,
      subcomponent: Slider(
        value: preference.get(),
        label: preference.get().toString(),
        onChanged: enabled
            ? (newValue) {
                preference.set(newValue);
              }
            : null,
        min: min,
        max: max,
        divisions: divisions,
      ),
    );
  }
}
