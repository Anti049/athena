import 'package:athena/features/notifications/application/notification_controller.dart';
import 'package:dartx/dartx.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
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
    required Map<NotificationSource, int> notificationCount,
    required int notificationIDCount,
  }) = _Notifications;

  factory Notifications.initial() => Notifications(
        channelID: 'channelID',
        channelName: 'channelName',
        channelDescription: 'channelDescription',
        notificationCount: {
          for (var source in NotificationSource.values) source: 0,
        },
        notificationIDCount: 0,
      );

  void initialize() async {
    // Initialize notifications
    AwesomeNotifications().initialize(
      // set the icon to null if you want to use the default app icon
      'resource://drawable/notification_icon',
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: const Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupKey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: true,
    );
    NotificationController.initialize();
  }

  int showNotification(AppNotification notification) {
    return 0;
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
