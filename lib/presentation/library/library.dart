import 'package:athena/core/notifications/notification_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryTab extends ConsumerStatefulWidget {
  const LibraryTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LibraryTabState();
}

class _LibraryTabState extends ConsumerState<LibraryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        elevation: 4.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ref
                .read(notificationCountProvider.notifier)
                .increment(NotificationSource.updates);
          },
          child: const Text('Test Notification'),
        ),
      ),
    );
  }
}
