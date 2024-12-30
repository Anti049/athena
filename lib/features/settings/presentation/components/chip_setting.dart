import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipSettingWidget<T> extends ConsumerWidget {
  const ChipSettingWidget({
    super.key,
    required this.preference,
    required this.label,
    this.value,
    this.enabled = true,
  });

  final Preference<T> preference;
  final String label;
  final T? value;
  final bool enabled;

  bool get active {
    if (value != null) {
      return preference.get() == value;
    } else if (T == bool) {
      return preference.get() as bool;
    }
    return false;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: enabled
          ? () {
              if (value != null) {
                preference.set(value);
              } else if (T == bool) {
                (preference as Preference<bool>).toggle();
              }
            }
          : null,
      child: Chip(
        label: Text(label),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: enabled
            ? (active
                ? context.scheme.primaryContainer
                : context.scheme.surfaceContainer)
            : context.scheme.surfaceContainerHighest,
        labelStyle: enabled
            ? (active
                ? context.text.bodyMedium?.copyWith(
                    color: context.scheme.onPrimaryContainer,
                  )
                : context.text.bodyMedium)
            : context.text.bodyMedium?.copyWith(
                color: context.scheme.onSurfaceVariant,
              ),
        side: BorderSide(
          color: active && enabled
              ? context.scheme.primary
              : context.scheme.outlineVariant,
        ),
      ),
    );
  }
}
