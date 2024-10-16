import 'package:athena/core/notifications/notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

@riverpod
class NotificationCount extends _$NotificationCount {
  @override
  Notifications build() => Notifications.initial();

  void showNotification(AppNotification notification) {
    // Show notification
    state.showNotification(notification);
    // Increment notification count
    if (notification.source != null) {
      state.increment(notification.source!);
    }
  }

  int get(NotificationSource source) {
    return state.notificationCount[source] ?? 0;
  }
}
