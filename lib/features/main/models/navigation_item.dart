import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_item.freezed.dart';

@freezed
class NavigationItem with _$NavigationItem {
  const NavigationItem._();
  const factory NavigationItem({
    required String title,
    required PageRouteInfo route,
    required IconData icon,
  }) = _NavigationItem;

  Icon get unselectedIcon => Icon(icon, fill: 0.0);
  Icon get selectedIcon => Icon(icon, fill: 1.0);

  NavigationDestination get barDestination => NavigationDestination(
        label: title,
        icon: unselectedIcon,
        selectedIcon: selectedIcon,
      );

  NavigationRailDestination get railDestination => NavigationRailDestination(
        icon: unselectedIcon,
        selectedIcon: selectedIcon,
        label: Text(title),
      );

  NavigationDrawerDestination get drawerDestination =>
      NavigationDrawerDestination(
        icon: unselectedIcon,
        selectedIcon: selectedIcon,
        label: Text(title),
      );
}
