/*

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_portal_app/routing/route_constants.dart';

import '../splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routeRoot:
      return generatePlatformRoute(SplashPage());
  }
}

Route generatePlatformRoute<T>(Widget page) {
  return Platform.isIOS
      ? CupertinoPageRoute(builder: (_) => page)
      : MaterialPageRoute(builder: (_) => page);
}
*/
