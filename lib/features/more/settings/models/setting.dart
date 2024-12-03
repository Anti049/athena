import 'package:athena/features/more/settings/models/preference.dart';
import 'package:athena/features/more/settings/presentation/choice_setting.dart';
import 'package:athena/features/more/settings/presentation/slider_setting.dart';
import 'package:athena/features/more/settings/presentation/switch_setting.dart';
import 'package:athena/features/more/settings/presentation/text_setting.dart';
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

class ChoiceSetting extends Setting<dynamic> {
  ChoiceSetting({
    required super.title,
    super.subtitle,
    super.icon,
    super.preference,
    super.callback,
    super.enabled,
    required this.choices,
  });

  final List<Choice> choices;
}

class Choice {
  const Choice({
    required this.label,
    required this.value,
  });

  final String label;
  final dynamic value;
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
      return ChoiceSettingWidget(
        title: setting.title,
        preference: setting.preference as Preference<dynamic>,
        choices: setting.choices,
        enabled: setting.enabled,
      );
  }
}