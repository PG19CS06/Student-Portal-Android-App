import 'package:flutter/material.dart';
import 'package:student_portal_app/image_assets.dart';
import 'package:student_portal_app/routing/route_constants.dart';
import 'package:student_portal_app/app_constants.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      drawer: Drawer(
        child: _drawerWidget(context),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Feedback',
          ),
         /*BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),*/
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeAttendance);
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    "Attendance",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeFeedback);
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    "Feedback",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeNotification);
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    "Notification",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerWidget([BuildContext? ctx]) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  IA_USER_AVATAR,
                ),
              ),
              title: Text("Raj"),
              subtitle: Text("raj@gmail.com"),
              onTap: (){
                Navigator.of(ctx!).popAndPushNamed(routeProfile);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.edit_note),
              title: Text("Attendance"),
              onTap: (){
                Navigator.of(ctx!).popAndPushNamed(routeAttendance);
              },
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Feedback"),
              onTap: () {
                Navigator.of(ctx!).popAndPushNamed(routeFeedback);
              },
            ),
            ListTile(
              leading: Icon(Icons.add_alert),
              title: Text("Notification"),
              onTap: () {
                Navigator.of(ctx!).popAndPushNamed(routeNotification);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text("Fees"),
            ),
            ListTile(
              leading: Icon(Icons.notes_rounded),
              title: Text("Application Form"),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Study Materials"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    ctx!, routeLogin, (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
