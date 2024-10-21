import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

enum NotificationSource {
  library,
  updates,
  history,
  browse,
  more,
}

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String title,
    required String description,
    NotificationSource? source,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);

  factory AppNotification.library(String title, String description) =>
      AppNotification(
        title: title,
        description: description,
        source: NotificationSource.library,
      );

  factory AppNotification.updates(String title, String description) =>
      AppNotification(
        title: title,
        description: description,
        source: NotificationSource.updates,
      );
}

@Freezed(makeCollectionsUnmodifiable: false)
class Notifications with _$Notifications {
  // Added constructor. Must not have any parameter
  const Notifications._();

  factory Notifications({
    required String channelID,
    required String channelName,
    required String channelDescription,
    required FlutterLocalNotificationsPlugin plugin,
    required Map<NotificationSource, int> notificationCount,
    required int notificationIDCount,
  }) = _Notifications;

  factory Notifications.initial() => Notifications(
        channelID: 'channelID',
        channelName: 'channelName',
        channelDescription: 'channelDescription',
        plugin: FlutterLocalNotificationsPlugin(),
        notificationCount: {
          for (var source in NotificationSource.values) source: 0,
        },
        notificationIDCount: 0,
      );

  static void notificationTapBackground(NotificationResponse response) {
    // Handle notification tap
    if (kDebugMode) {
      print('Background otification tapped: ${response.payload}');
    }
  }

  static void notificationTap(NotificationResponse response) {
    // Handle notification tap
    if (kDebugMode) {
      print('Notification tapped: ${response.payload}');
    }
  }

  void initialize() async {
    // Initialize notifications
    const initSettingsAndroid =
        AndroidInitializationSettings('@drawable/notification_icon');
    const initSettings = InitializationSettings(
      android: initSettingsAndroid,
    );
    await plugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: notificationTap,
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );
  }

  int showNotification(AppNotification notification) {
    return 0;
    final id = notificationIDCount;
    // Show notification
    plugin.show(
      id,
      notification.title,
      notification.description,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channelID,
          channelName,
          channelDescription: channelDescription,
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker',
          groupKey: 'athena',
          chronometerCountDown: true,
          showProgress: true,
          maxProgress: 100,
          progress: 50,
        ),
      ),
      payload: notification.toJson().toString(),
    );
    // Increment the notification count
    if (notification.source != null) {
      increment(notification.source!);
    }
    // Return the notification ID
    return id;
  }

  void increment(NotificationSource source) {
    notificationCount[source] = notificationCount[source]! + 1;
  }

  void decrement(NotificationSource source) {
    notificationCount[source] =
        (notificationCount[source]! - 1).coerceAtLeast(0);
  }

  int get(NotificationSource source) {
    return notificationCount[source] ?? 0;
  }
}
