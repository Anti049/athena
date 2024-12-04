import 'package:athena/features/settings/models/setting.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'searchable_settings.freezed.dart';

abstract class ISearchableSettings {
  const ISearchableSettings();
  String getTitle(BuildContext context);
  Widget getWidget();
  PageRouteInfo getRoute();
  List<ISetting> getSettings(BuildContext context, WidgetRef ref);
}

@freezed
class SettingsData with _$SettingsData {
  const factory SettingsData({
    required String title,
    required PageRouteInfo route,
    required List<ISetting> contents,
  }) = _SettingsData;
}

@freezed
class SettingSearchResult with _$SettingSearchResult {
  const factory SettingSearchResult({
    required String title,
    required PageRouteInfo route,
    required String breadcrumbs,
    required String highlightKey,
  }) = _SettingSearchResult;
}
