import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:woodle/core/models/push_notification.dart/push_notification_model.dart';

class FirebaseServices {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final initializationSettings = new InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'));

  Future<String?> get token => FirebaseMessaging.instance.getToken();

  void init(BuildContext context) {
    _initNotification(context);
    _initDeepLinks(context);
  }

  void _initNotification(BuildContext context) {
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String? payload) {
      if (payload != null) debugPrint('notification payload: ' + payload);
      return Navigator.pushNamed(context, '/notifications');
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      final fbNotification = PushNotificationModel.fromJson(
          Map<String, dynamic>.from(message.data));
      var androidPlatformChannelSpecifics = AndroidNotificationDetails(
          'delvento', 'Delvento', 'Delvento Notifications',
          importance: Importance.max,
          priority: Priority.high,
          ticker: fbNotification.message);
      var platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.show(
          fbNotification.notificationId ?? 0,
          fbNotification.title,
          fbNotification.message,
          platformChannelSpecifics,
          payload: fbNotification.toString());
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Navigator.pushNamed(context, '/notifications');
      // add(RedirectToNotifications(message.data == null
      //         ? null
      //         : PushNotificationModel.fromJson(
      //             Map<String, dynamic>.from(message.data))));
    });

    FirebaseMessaging.instance.requestPermission();
  }

  void _initDeepLinks(BuildContext context) {
    FirebaseDynamicLinks.instance.onLink(onSuccess: (dynamicLink) async {
      if (dynamicLink != null) {
        final Uri deepLink = dynamicLink.link;
        print("onSuccess: DEEP LINK => $deepLink");
        print("onSuccess: DEEP LINK PATH => ${deepLink.path}");
        Navigator.pushNamed(context, '/login',
            arguments: {"referal": deepLink.toString()});
      }
    }, onError: (OnLinkErrorException e) async {
      print('onLinkError');
      print(e.message);
    });

    FirebaseDynamicLinks.instance.getInitialLink().then((dynamicLink) {
      if (dynamicLink != null) {
        final Uri deepLink = dynamicLink.link;
        print("onSuccess: DEEP LINK => $deepLink");
        print("onSuccess: DEEP LINK PATH => ${deepLink.path}");
        Navigator.pushNamed(context, '/login',
            arguments: {"referal": deepLink.toString()});
      }
    });
  }
}
