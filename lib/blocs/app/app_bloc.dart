import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:student_portal_app/blocs/app/push_notification_model.dart';
import 'package:student_portal_app/data/rest/connect_api_service.dart';
import 'package:student_portal_app/data/rest/connect_repository.dart';
import 'package:student_portal_app/data/rest/remote_data_source.dart';
import 'package:student_portal_app/service_locator.dart';
import 'package:student_portal_app/services/local_storage_service.dart';

import './bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final localStorage = locator<LocalStorageService>();

  // ConnectDatabase db = ConnectDatabase();
  static ConnectApiService? _apiService;
  static ConnectRepository? _repository;
  static RemoteDataSource? _remoteDataSource;
  static bool isOnNotificationsPage = false;

//  ValueNotifier tokenNotifier;

  AppBloc(super.initialState) {
    debugPrint(localStorage.token);
    _apiService = ConnectApiService.getApiService(localStorage.token, () {
      add(SessionTimeout());
    });

    _apiService = ConnectApiService.getApiService("", () {
      add(SessionTimeout());
    });
    _remoteDataSource = RemoteDataSource(_apiService!);
    _repository = ConnectRepository(_remoteDataSource!);
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher');
    /*var initializationSettingsIOS = new IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);*/
    const initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String? payload) async {
      if (payload != null) {
        debugPrint('notification payload: $payload');
      }
      add(RedirectToNotifications(
          PushNotificationModel.fromJson(json.decode(payload!))));
    });

    final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance
      ..getToken().then((t) {
        debugPrint("Firebase token $t");
        localStorage.firebaseId = t!;
      });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      debugPrint('on message $message.runtimeType}');
      debugPrint('on message $message');
/*
      add(RedirectToNotifications(PushNotificationModel.fromJson(
        Map<String, dynamic>.from(message["data"]),
      )));
*/
      final fbNotification = PushNotificationModel.fromJson(
          Map<String, dynamic>.from(message.toMap()));
      var androidPlatformChannelSpecifics = AndroidNotificationDetails(
          'connect', 'Connect',
          channelDescription: 'Connect Notifications',
          importance: Importance.max,
          priority: Priority.high,
          ticker: fbNotification.message);
//          var iOSPlatformChannelSpecifics = IOSNotificationDetails();
      var platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.show(
          fbNotification.notificationId!,
          fbNotification.title,
          fbNotification.message,
          platformChannelSpecifics,
          payload: fbNotification.toString());
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('on message $message.runtimeType}');
      debugPrint('on message $message');
      add(RedirectToNotifications(PushNotificationModel.fromJson(
        Map<String, dynamic>.from(message.data),
      )));
    });

    _firebaseMessaging.getNotificationSettings();
  }

/*
  RegisterBloc get registerBloc => RegisterBloc(_repository, localStorage, () {
        recreateApiService();
      });
*/

/*
  LoginBloc get loginBloc => LoginBloc(_repository, localStorage, () {
        recreateApiService();
      });
*/

  @override
  AppState get initialState => InitialAppState();

  @override
  void dispose() {
    debugPrint("Disposed APP BLOC");
    // super.dispose();
  }

  void recreateApiService() {
    debugPrint("re Creating API Service with token ${localStorage.token}");
    _apiService = ConnectApiService.getApiService(localStorage.token, () {
      add(SessionTimeout());
    }, force: true);
    _remoteDataSource = RemoteDataSource(_apiService!);
    _repository = ConnectRepository(_remoteDataSource!);
  }

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is RedirectToNotifications) {
      yield NotificationPage(event.data);
    }
    if (event is SessionTimeout) {
      localStorage.logout();
      yield StateSessionTimeoutPage();
    }

    if (event is Nop) {
      yield InitialAppState();
    }
/*
    if (event is UpdateReadNotification) {
      _repository?.readNotification(event.notificationId);
    }
*/
  }
}
