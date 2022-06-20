import 'package:flutter/material.dart';
import 'package:student_portal_app/routing/route_constants.dart';
import 'routing/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LBS Connect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: routeRoot,
      debugShowCheckedModeBanner: false,
      // home: const SplashPage(),
      // onGenerateRoute: router.generateRoute,
      // initialRoute: routeRoot,
    );
  }
}

