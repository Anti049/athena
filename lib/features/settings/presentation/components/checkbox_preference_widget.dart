import 'package:athena/features/settings/providers/preference.dart';
import 'package:athena/features/settings/providers/tri_state.dart';
import 'package:athena/features/settings/presentation/components/base_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/text_preference_widget.dart';
import 'package:flutter/material.dart';

class CheckboxPreferenceWidget extends StatelessWidget {
  const CheckboxPreferenceWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    required this.preference,
    this.widgetLeading = false,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final Preference<TriState> preference;
  final bool widgetLeading;

  void onChanged(bool? value) {
    preference.set(TriState.fromBool(value));
  }

  @override
  Widget build(BuildContext context) {
    return TextPreferenceWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      widget: Padding(
        padding: EdgeInsetsDirectional.only(
          start: widgetLeading ? 0.0 : trailingWidgetBuffer,
        ),
        child: Checkbox(
          tristate: true,
          value: preference.get().toBool(),
          onChanged: onChanged,
        ),
      ),
      onPreferenceClick: () {
        preference.cycle(TriState.values);
      },
      widgetLeading: widgetLeading,
    );
  }
}
