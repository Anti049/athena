import 'package:athena/core/navigation/navigation_provider.dart';
import 'package:athena/core/notifications/notification_provider.dart';
import 'package:athena/presentation/common_components/badged_icon.dart';
import 'package:athena/presentation/theme/custom_colors.dart';
import 'package:athena/utils/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationSkeleton extends ConsumerStatefulWidget {
  const NavigationSkeleton({
    super.key,
    this.appBar,
    required this.tabs,
    required this.icons,
    required this.labels,
    this.badgeCounts,
  });

  final AppBar? appBar;

  /// List of screens to navigate to
  final List<Widget> tabs;

  /// List of icons to display
  ///
  /// Must be the same length as [tabs]
  final List<IconData> icons;

  /// List of labels to display
  final List<String> labels;

  /// List of badge counts to display
  ///
  /// Must be the same length as [tabs]
  ///
  /// Typically either [int] or [NotificationSource]
  ///
  /// If [null], no badge will be displayed
  ///
  /// If [NotificationSource], the badge will be updated automatically
  ///
  /// If [int], the badge will be displayed with the given count
  final List<dynamic>? badgeCounts;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NavigationSkeletonState();
}

class _NavigationSkeletonState extends ConsumerState<NavigationSkeleton> {
  /// Builds the navigation bar for the
  /// **'Compact'**
  /// layout
  Widget _buildCompactBar(int index) {
    return NavigationBar(
      destinations: List.generate(
        widget.tabs.length,
        (index) {
          // Get notification count
          final notificationCount = widget.badgeCounts?[index] is int
              ? widget.badgeCounts![index]
              : ref
                  .watch(notificationCountProvider)[widget.badgeCounts?[index]];
          // Return the navigation destination
          return NavigationDestination(
            icon: BadgedIcon(
              icon: Icon(widget.icons[index], fill: 0.0),
              count: notificationCount,
            ),
            selectedIcon: BadgedIcon(
              icon: Icon(widget.icons[index], fill: 1.0),
              count: notificationCount,
            ),
            label: widget.labels[index],
          );
        },
      ),
      selectedIndex: index,
      onDestinationSelected: (value) {
        ref.read(navigationProvider.notifier).index = value;
      },
    );
  }

  /// Builds the navigation rail for the
  /// **'Medium'**
  /// layout
  Widget _buildMediumRail(int index) {
    return NavigationRail(
      backgroundColor: context.scheme.surfaceContainer,
      destinations: List.generate(
        widget.tabs.length,
        (index) {
          // Get notification count
          final notificationCount = widget.badgeCounts?[index] is int
              ? widget.badgeCounts![index]
              : ref
                  .watch(notificationCountProvider)[widget.badgeCounts?[index]];
          // Return the navigation destination
          return NavigationRailDestination(
            icon: BadgedIcon(
              icon: Icon(widget.icons[index], fill: 0.0),
              count: notificationCount,
            ),
            selectedIcon: BadgedIcon(
              icon: Icon(widget.icons[index], fill: 1.0),
              count: notificationCount,
            ),
            label: Text(widget.labels[index]),
          );
        },
      ),
      selectedIndex: index,
      onDestinationSelected: (value) {
        ref.read(navigationProvider.notifier).index = value;
      },
    );
  }

  /// Builds the navigation drawer for the
  /// **'Expanded'**
  /// layout
  Widget _buildExpandedDrawer(int index) {
    return Container(
      color: context.scheme.surfaceContainer,
      child: NavigationDrawer(
        backgroundColor: context.scheme.surfaceContainer,
        selectedIndex: index,
        onDestinationSelected: (value) {
          ref.read(navigationProvider.notifier).index = value;
        },
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28.0, 16, 28.0, 16),
            child: Text(
              'Navigation',
              style: context.textTheme.titleSmall,
            ),
          ),
          ...List.generate(
            widget.tabs.length,
            (i) {
              // Get notification count
              final notificationCount = widget.badgeCounts?[i] is int
                  ? widget.badgeCounts![i] ?? 0
                  : ref.watch(
                          notificationCountProvider)[widget.badgeCounts?[i]] ??
                      0;
              // Return the navigation destination
              return NavigationDrawerDestination(
                icon: Icon(widget.icons[i], fill: 0.0),
                selectedIcon: Icon(widget.icons[i], fill: 1.0),
                label: Expanded(
                  child: Row(
                    children: [
                      Text(
                        widget.labels[i],
                      ),
                      const Spacer(),
                      if (notificationCount != 0)
                        Text(
                          '$notificationCount',
                          textAlign: TextAlign.end,
                          style: context.textTheme.labelLarge?.copyWith(
                            color: context.scheme.onSurfaceVariant,
                          ),
                        ),
                      const SizedBox(
                        width: 24.0,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get the current index from the navigation provider
    final index = ref.watch(navigationProvider);

    // Return the scaffold
    return Scaffold(
      appBar: widget.appBar,
      body: SafeArea(
        top: false,
        child: Row(
          children: [
            if (context.isMedium) _buildMediumRail(index),
            if (context.atLeastExpanded) ...[
              _buildExpandedDrawer(index),
            ],
            Expanded(
              child: widget.tabs[index],
            ),
          ],
        ),
      ),
      bottomNavigationBar: context.isCompact ? _buildCompactBar(index) : null,
    );
  }
}
