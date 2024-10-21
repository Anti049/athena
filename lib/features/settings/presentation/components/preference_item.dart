import 'package:athena/features/settings/domain/preference.dart' as d;
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
        );
      case d.SwitchPreference():
        final dItem = item as d.SwitchPreference;
        final value = dItem.pref.get();
        return SwitchPreferenceWidget(
          title: dItem.title,
          subtitle: dItem.subtitle,
          icon: dItem.icon,
          checked: value,
          onCheckedChanged: (newValue) async {
            if (await dItem.onValueChanged(newValue)) {
              dItem.pref.set(newValue);
            }
          },
        );
      case d.SegmentPreference():
        final dItem = item as d.SegmentPreference;
        return ListTile(
          title: Text(dItem.title),
          subtitle: dItem.subtitle != null ? Text(dItem.subtitle!) : null,
        );
      case d.SliderPreference():
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
