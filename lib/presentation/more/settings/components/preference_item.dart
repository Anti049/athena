import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:athena/presentation/more/settings/models/preference.dart' as d;

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
      // TODO: Handle this case.
      case d.SliderPreference():
      // TODO: Handle this case.
      case d.InfoPreference():
      // TODO: Handle this case.
      case d.CustomPreference():
        final dItem = item as d.CustomPreference;
        return dItem.content ?? const SizedBox.shrink();
    }
  }
}
