import 'package:athena/core/notifications/notification_provider.dart';
import 'package:athena/core/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BadgedIcon extends ConsumerWidget {
  const BadgedIcon({
    super.key,
    required this.icon,
    this.count,
    this.source,
  });

  final Icon icon;
  final int? count;
  final NotificationSource? source;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (source != null) {
      int sourceCount =
          ref.watch(notificationCountProvider.notifier).get(source!);
      if (sourceCount > 0) {
        return Consumer(
          builder: (context, ref, child) {
            return Badge.count(count: sourceCount, child: icon);
          },
        );
      }
    } else if (count != null) {
      if (count! > 0) {
        return Badge.count(count: count as int, child: icon);
      }
    }
    return icon;
  }
}
