import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_tab.freezed.dart';

@freezed
class ScreenTab with _$ScreenTab {
  const ScreenTab._();
  const factory ScreenTab({
    required String title,
    required PageRouteInfo route,
    List<Widget>? actions,
  }) = _ScreenTab;

  Tab get tab => Tab(
        text: title,
      );
}
