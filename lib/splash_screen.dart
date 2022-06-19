import 'package:flutter/material.dart';
import 'package:student_portal_app/image_assets.dart';
import 'package:student_portal_app/routing/route_constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _splashWidget(context);
  }

  Widget _splashWidget(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              child: Image.asset(
                IA_NAMED_LOGO,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamed(routeLogin);
          }, child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamed(routeDashboard);
          }, child: Text("Dashboard")),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamed(routeNotification);
          }, child: Text("Notifications")),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamed(routeFeedback);
          }, child: Text("Feedback")),
        ],
      ),
    );
  }
}
