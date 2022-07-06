
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_portal_app/pages/login/login.dart';
import 'package:student_portal_app/pages/notification/notification_details/notification_details.dart';
import 'package:student_portal_app/routing/route_constants.dart';

import '../pages/dashboard/dashboard.dart';
import '../pages/feedback/feedback.dart';
import '../pages/notification/notification.dart';
import '../splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routeRoot:
      return generatePlatformRoute(SplashPage());
    case routeLogin:
      return generatePlatformRoute(LoginPage());
    case routeDashboard:
      return generatePlatformRoute(DashboardPage());
    case routeNotification:
      return generatePlatformRoute(NotificationPage());
    case routeNotificationDetails:
      return generatePlatformRoute(NotificationDetailsPage());
    case routeFeedback:
      return generatePlatformRoute(FeedbackPage());
  }
  return generatePlatformRoute(SplashPage());
}

Route generatePlatformRoute<T>(Widget page) {
  return Platform.isIOS
      ? CupertinoPageRoute(builder: (_) => page)
      : MaterialPageRoute(builder: (_) => page);
}
