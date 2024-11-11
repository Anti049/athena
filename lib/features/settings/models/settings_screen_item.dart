import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_screen_item.freezed.dart';

@freezed
class SettingsScreenItem with _$SettingsScreenItem {
  const factory SettingsScreenItem({
    required String title,
    String? subtitle,
    required IconData icon,
    required Widget screen,
  }) = _SettingsScreenItem;
}
