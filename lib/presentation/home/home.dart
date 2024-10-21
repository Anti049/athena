import 'package:athena/core/notifications/notifications.dart';
import 'package:athena/presentation/browse/browse.dart';
import 'package:athena/presentation/history/history.dart';
import 'package:athena/presentation/home/components/navigation.dart';
// Tabs
import 'package:athena/presentation/library/library.dart';
import 'package:athena/presentation/more/more.dart';
import 'package:athena/presentation/updates/updates.dart';
import 'package:athena/utils/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentPageIndex = 0;

  void _navigateToTab(int index) {
    setState(() {
      // Update the current page index
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
    // Return scaffold
    return PopScope(
      canPop: _currentPageIndex == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          _navigateToTab(0);
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return NavigationSkeleton(
            tabs: const [
              LibraryTab(),
              UpdatesTab(),
              HistoryTab(),
              BrowseTab(),
              MoreTab(),
            ],
            icons: const [
              Symbols.collections_bookmark,
              Symbols.release_alert,
              Symbols.history,
              Symbols.explore,
              Symbols.more_horiz,
            ],
            labels: [
              context.locale.labelLibrary,
              context.locale.labelUpdates,
              context.locale.labelHistory,
              context.locale.labelBrowse,
              context.locale.labelMore,
            ],
            badgeCounts: const [
              NotificationSource.library,
              NotificationSource.updates,
              NotificationSource.history,
              NotificationSource.browse,
              NotificationSource.more,
            ],
          );
        },
      ),
    );
  }
}
