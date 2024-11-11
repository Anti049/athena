import 'dart:io';

import 'package:athena/features/logging/providers/logger.dart';
import 'package:athena/features/notifications/providers/notification_preferences.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_manager.g.dart';

enum Channel {
  main(
    title: "Main",
    description: "Main channel",
    importance: Importance.defaultImportance,
    priority: Priority.defaultPriority,
  ),
  soundOnly(
    title: 'soundOnly',
    description: 'Sound only',
    importance: Importance.defaultImportance,
    priority: Priority.defaultPriority,
  ),
  vibrationOnly(
    title: 'vibrationOnly',
    description: 'Vibration only',
    importance: Importance.defaultImportance,
    priority: Priority.defaultPriority,
  ),
  silent(
    title: 'silent',
    description: 'Silent',
    importance: Importance.defaultImportance,
    priority: Priority.defaultPriority,
  );

  const Channel({
    this.title = '',
    this.description = '',
    this.importance = Importance.defaultImportance,
    this.priority = Priority.defaultPriority,
  });

  final String title;
  final String description;
  final Importance importance;
  final Priority priority;

  String get id {
    return toString().split('.').last;
  }

  static Channel fromPreferences({
    bool silent = false,
    bool sound = true,
    bool vibrate = true,
  }) {
    if (silent) {
      return Channel.silent;
    } else if (sound && vibrate) {
      return Channel.main;
    } else if (sound) {
      return Channel.soundOnly;
    } else if (vibrate) {
      return Channel.vibrationOnly;
    } else {
      return Channel.silent;
    }
  }
}

class NotificationManager {
  NotificationManager({
    required this.logger,
    required this.preferences,
  });

  final Logger logger;
  final NotificationPreferences preferences;
  late FlutterLocalNotificationsPlugin notificationsPlugin;
  final Map<int, String> _shownNotifications = {};

  void initialize() async {
    notificationsPlugin = FlutterLocalNotificationsPlugin();

    // Android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('notification_icon');

    // Collate all the initialization settings
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      // iOS: initializationSettingsIOS,
      // macOS: initializationSettingsMacOS,
      // linux: initializationSettingsLinux,
    );

    // Initialize the plugin
    await notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      onDidReceiveBackgroundNotificationResponse:
          onDidReceiveBackgroundNotificationResponse,
    );
  }

  Future<bool?> hasPermission() async {
    if (Platform.isAndroid) {
      return notificationsPlugin
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>()
              ?.areNotificationsEnabled() ??
          false;
    }
    if (Platform.isIOS) {
      return notificationsPlugin
              .resolvePlatformSpecificImplementation<
                  IOSFlutterLocalNotificationsPlugin>()
              ?.requestPermissions(
                alert: true,
                badge: true,
                sound: true,
              ) ??
          false;
    }
    return false;
  }

  Future<bool?>? requestPermission() {
    // Is this an Android device?
    if (Platform.isAndroid) {
      // Request permission
      return notificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
    // Is this an iOS device?
    if (Platform.isIOS) {
      // Request permission
      return notificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
    // Unsupported platform
    return null;
  }

  void onDidReceiveNotificationResponse(
    NotificationResponse response,
  ) {
    // Get the notification details
    final String? payload = response.payload;
    // Log in debug mode
    if (payload != null) {
      logger.d('Notification payload: $payload');
    }
    // Handle the notification response
  }

  @pragma('vm:entry-point')
  static void onDidReceiveBackgroundNotificationResponse(
    NotificationResponse response,
  ) {
    // Create new logger
    final Logger logger = Logger();
    // Get the notification details
    final String? payload = response.payload;
    // Log in debug mode
    if (payload != null) {
      logger.d('Notification payload: $payload');
    }
    // Handle the background notification response
  }

  Future<int> sendNotification({
    required String title,
    required String body,
    String? payload,
    String? icon,
    Importance? importance,
    Priority? priority,
    String ticker = "ticker",
    bool silent = false,
  }) async {
    bool enabled = preferences.notificationsEnabled().get();
    bool sound = preferences.notificationsSound().get();
    bool vibrate = preferences.notificationsVibrate().get();

    Channel channel = Channel.fromPreferences(
      silent: silent,
      sound: sound,
      vibrate: vibrate,
    );

    // Are notifications enabled?
    if (!enabled) {
      return -1;
    }

    // Do we have permission?
    if (await hasPermission() == false) {
      final gotPermission = await requestPermission();
      if (gotPermission == false) {
        return -1;
      }
    }

    // Android
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      channel.id,
      channel.title,
      channelDescription: channel.description,
      importance: importance ?? channel.importance,
      priority: priority ?? channel.priority,
      ticker: ticker,
      silent: silent,
      icon: icon,
      playSound: sound,
      enableVibration: vibrate,
    );

    // Collate all the notification details
    final NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    // Get highest notification ID
    final int id =
        _shownNotifications.keys.fold(0, (a, b) => a > b ? a : b) + 1;

    // Send the notification
    await notificationsPlugin.show(
      id,
      title,
      body,
      notificationDetails,
      payload: payload,
    );

    // Store the notification ID
    _shownNotifications[id] = payload ?? '';

    // Return the notification ID
    return id;
  }

  Future<void> cancelNotification(int id) async {
    // Cancel the notification
    await notificationsPlugin.cancel(id);

    // Remove the notification ID
    _shownNotifications.remove(id);
  }

  String computeChannelID(String title) {
    return title.toLowerCase().replaceAll(' ', '_');
  }
}

@riverpod
NotificationManager notificationManager(NotificationManagerRef ref) =>
    NotificationManager(
      logger: ref.watch(loggerProvider),
      preferences: ref.watch(notificationPreferencesProvider),
    );
