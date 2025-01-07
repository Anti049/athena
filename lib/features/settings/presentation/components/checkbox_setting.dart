import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/components/base_setting.dart';
import 'package:athena/features/settings/presentation/components/text_setting.dart';
import 'package:athena/utils/enums.dart';
import 'package:athena/utils/theming.dart';
import 'package:flutter/material.dart';

class CheckboxSettingWidget<T> extends StatelessWidget {
  const CheckboxSettingWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    required this.preference,
    this.enabled = true,
    this.widgetLeading = false,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final Preference<T> preference;
  final bool enabled;
  final bool widgetLeading;

  void onChanged(bool? value) {
    preference.set(TriState.fromBool(value));
  }

  bool? get value {
    final dynamic value = preference.get();
    if (T == bool) {
      return value as bool;
    } else if (T == TriState) {
      return (value as TriState).toBool();
    }
    return false;
  }

  Color? getColor(BuildContext context) {
    dynamic value = preference.get();
    if (T == bool) {
      value = value as bool;
    } else if (T == TriState) {
      value = (value as TriState).toBool();
    }
    return switch (value as bool?) {
      false => null,
      true => context.scheme.primary,
      null => context.scheme.error,
    };
  }

  @override
  Widget build(BuildContext context) {
    return TextSettingWidget(
      title: title,
      subtitle: subtitle,
      icon: icon,
      onSettingClick: () {
        final value = preference.get();
        if (T == bool) {
          preference.set(!(value as bool));
        } else if (T == TriState) {
          (preference as Preference<TriState>).cycle(TriState.values);
        }
      },
      widget: Padding(
        padding: EdgeInsetsDirectional.only(
          start: widgetLeading ? 0.0 : trailingWidgetBuffer,
        ),
        child: Checkbox(
          value: value,
          onChanged: enabled ? onChanged : null,
          tristate: T == TriState,
          activeColor: getColor(context),
        ),
      ),
      enabled: enabled,
      widgetLeading: widgetLeading,
    );
  }
}
