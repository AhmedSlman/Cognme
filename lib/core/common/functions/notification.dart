import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: onTap,
      onDidReceiveNotificationResponse: onTap,
    );
  }

  static void onTap(NotificationResponse response) {}

  static Future<void> showNotification(String title, String body) async {
    const NotificationDetails details = NotificationDetails(
        android: AndroidNotificationDetails("id 1", "basic",
            importance: Importance.max, priority: Priority.high));
    await flutterLocalNotificationsPlugin.show(0, title, body, details);
  }
}
