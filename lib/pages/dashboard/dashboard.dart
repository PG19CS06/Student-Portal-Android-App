import 'package:flutter/material.dart';
import 'package:student_portal_app/routing/route_constants.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LBS Connect"),),
      drawer: Drawer(child: Container(),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){},
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text("Attendance",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(routeFeedback);
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text("Feedback",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(routeNotification);
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text("Notification",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
