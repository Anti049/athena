import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_item.freezed.dart';

@freezed
class TabItem with _$TabItem {
  const TabItem._();
  const factory TabItem({
    required String title,
    required PageRouteInfo route,
    List<Widget>? actions,
  }) = _TabItem;

  Tab get tab => Tab(
        text: title,
      );
}
