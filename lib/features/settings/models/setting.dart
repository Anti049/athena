import 'package:athena/features/settings/models/preference.dart';
import 'package:athena/features/settings/presentation/components/checkboxes_setting.dart';
import 'package:athena/features/settings/presentation/components/segmented_setting.dart';
import 'package:athena/features/settings/presentation/components/radio_setting.dart';
import 'package:athena/features/settings/presentation/components/slider_setting.dart';
import 'package:athena/features/settings/presentation/components/switch_setting.dart';
import 'package:athena/features/settings/presentation/components/text_setting.dart';
import 'package:flutter/material.dart';

sealed class ISetting {
  ISetting({
    required this.title,
    this.icon,
  });

  final String title;
  final IconData? icon;
}

sealed class Setting<T> extends ISetting {
  Setting({
    required super.title,
    super.icon,
    this.subtitle,
    this.preference,
    this.callback,
    this.enabled = true,
  });

  final String? subtitle;
  final Preference<T>? preference;
  final void Function(T newValue)? callback;
  final bool enabled;
}

class TextSetting extends Setting<String> {
  TextSetting({
    required super.title,
    super.subtitle,
    super.icon,
    super.preference,
    super.callback,
    super.enabled,
    this.onClick,
  });

  final void Function()? onClick;
}

class SwitchSetting extends Setting<bool> {
  SwitchSetting({
    required super.title,
    super.subtitle,
    super.icon,
    super.preference,
    super.callback,
    super.enabled,
  });
}

class SliderSetting extends Setting<double> {
  SliderSetting({
    required super.title,
    super.subtitle,
    super.icon,
    super.preference,
    super.callback,
    super.enabled,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions = 100,
  });

  final double min;
  final double max;
  final int divisions;
}

class Choice {
  const Choice({
    required this.label,
    required this.value,
  });

  final String label;
  final dynamic value;
}

enum ChoiceType {
  radio,
  segmented,
  checkboxes,
}

class ChoiceSetting extends Setting<dynamic> {
  ChoiceSetting({
    required super.title,
    super.subtitle,
    super.icon,
    super.preference,
    super.callback,
    super.enabled,
    required this.choices,
    required this.type,
  });

  final List<Choice> choices;
  final ChoiceType type;
}

class CustomSetting extends Setting<dynamic> {
  CustomSetting({
    required super.title,
    required this.widget,
  });

  final Widget widget;
}

class SettingGroup extends ISetting {
  SettingGroup({
    required super.title,
    super.icon,
    required this.settings,
  });

  final List<ISetting> settings;
}

Widget buildSettingWidget(BuildContext context, Setting setting) {
  switch (setting) {
    case TextSetting():
      return TextSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        icon: setting.icon,
        onSettingClick: setting.onClick,
        enabled: setting.enabled,
      );
    case SwitchSetting():
      return SwitchSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        icon: setting.icon,
        checked: setting.preference?.get() ?? false,
        onChanged: (value) {
          setting.preference?.set(value);
          setting.callback?.call(value);
        },
        enabled: setting.enabled,
      );
    case SliderSetting():
      return SliderSettingWidget(
        title: setting.title,
        subtitle: setting.subtitle,
        preference: setting.preference as Preference<double>,
        min: setting.min,
        max: setting.max,
        divisions: setting.divisions,
        enabled: setting.enabled,
      );
    case ChoiceSetting():
      switch (setting.type) {
        case ChoiceType.radio:
          return RadioSettingWidget(
            title: setting.title,
            subtitle: setting.subtitle,
            preference: setting.preference as Preference<dynamic>,
            choices: setting.choices,
            enabled: setting.enabled,
          );
        case ChoiceType.segmented:
          return SegmentedSettingWidget(
            title: setting.title,
            preference: setting.preference as Preference<dynamic>,
            choices: setting.choices,
            enabled: setting.enabled,
          );
        case ChoiceType.checkboxes:
          return CheckboxesSettingWidget(
            title: setting.title,
            subtitle: setting.subtitle,
            preference: setting.preference as Preference<dynamic>,
            choices: setting.choices,
            enabled: setting.enabled,
          );
      }
    case CustomSetting():
      return setting.widget;
  }
}
