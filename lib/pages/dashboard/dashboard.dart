import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: (){},
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
              onTap: (){},
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
