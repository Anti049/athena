import 'package:athena/features/settings/application/preference.dart';
import 'package:athena/features/settings/domain/preference.dart' as d;
import 'package:athena/features/settings/presentation/components/segmented_button_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/slider_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/switch_preference_widget.dart';
import 'package:athena/features/settings/presentation/components/text_preference_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreferenceItem extends ConsumerWidget {
  const PreferenceItem({
    super.key,
    required this.item,
    this.highlightKey,
  });

  final d.PreferenceItem item;
  final String? highlightKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (item) {
      case d.TextPreference():
        final dItem = item as d.TextPreference;
        return TextPreferenceWidget(
          title: dItem.title,
          subtitle: dItem.subtitle,
          icon: dItem.icon,
          onPreferenceClick: dItem.onClick,
          widget: dItem.trailing,
        );
      case d.SwitchPreference():
        final dItem = item as d.SwitchPreference;
        final value = dItem.pref?.get() ?? false;
        return SwitchPreferenceWidget(
          title: dItem.title,
          subtitle: dItem.subtitle,
          icon: dItem.icon,
          checked: value,
          onCheckedChanged: (newValue) async {
            dItem.pref?.set(newValue);
            await dItem.onValueChanged!(newValue);
          },
        );
      case d.SegmentPreference():
        final dItem = item as d.SegmentPreference;
        return SegmentedButtonPreferenceWidget(
          pref: dItem.pref,
          options: dItem.options
              .map((o) => PreferenceSegment(
                    label: o.label,
                    value: o.value,
                  ))
              .toList(),
        );
      case d.SliderPreference():
        final dItem = item as d.SliderPreference;
        return SliderPreferenceWidget(
          title: dItem.title,
          subtitle: dItem.subtitle,
          pref: dItem.pref as Preference<double>?,
          // value: dItem.pref?.get(),
          // onChanged: (newValue) {
          //   dItem.pref?.set(newValue);
          // },
          min: dItem.min,
          max: dItem.max,
          step: dItem.step,
        );
      case d.ListPreference():
      // TODO: Handle this case.
      case d.EditTextPreference():
      // TODO: Handle this case.
      case d.InfoPreference():
      // TODO: Handle this case.
      case d.CustomPreference():
        final dItem = item as d.CustomPreference;
        return dItem.content ?? const SizedBox.shrink();
    }
  }
}
