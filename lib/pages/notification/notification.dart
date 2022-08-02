import 'package:flutter/material.dart';
import 'package:student_portal_app/routing/route_constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification")),
/*
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
             */
/* leading: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeM0WDhcm_QwNm1geCFXYuAp8bUHM3zlc8kA&usqp=CAU"),*/ /*

             leading: Icon(Icons.add_alert),
              title: Text("Result Published - M.Tech S4 (R,S) Exam June 2022 (Kottayam, Ernakulam I, Ernakulam II, Alappuzha & PTA, Trivandrum, Palakkad clusters)"),
              subtitle: Text("It is hereby notified that the results of M.Tech S4 (R,S) Exam June 2022 (Trivandrum, Ernakulam I, Ernakulam II, Alappuzha & PTA, Kottayam and Palakkad clusters) are published. The detailed result is available under the 'Result' tab of the University website and in student and college login.",
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
              onTap: (){
                Navigator.of(context).pushNamed(routeNotificationDetails);
              },
            );
          }),
*/
      body: ListView(
        children: [
          ListTile(
            /* leading: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeM0WDhcm_QwNm1geCFXYuAp8bUHM3zlc8kA&usqp=CAU"),*/
            leading: Icon(Icons.add_alert),
            title: Text(
                "Result Published - M.Tech S4 (R,S) Exam June 2022 (Kottayam, Ernakulam I, Ernakulam II, Alappuzha & PTA, Trivandrum, Palakkad clusters)"),
            subtitle: Text(
                "It is hereby notified that the results of M.Tech S4 (R,S) Exam June 2022 (Trivandrum, Ernakulam I, Ernakulam II, Alappuzha & PTA, Kottayam and Palakkad clusters) are published. The detailed result is available under the 'Result' tab of the University website and in student and college login.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            onTap: () {
              Navigator.of(context).pushNamed(routeNotificationDetails);
            },
          ),
          ListTile(
            /* leading: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeM0WDhcm_QwNm1geCFXYuAp8bUHM3zlc8kA&usqp=CAU"),*/
            leading: Icon(Icons.add_alert),
            title: Text(
                "Result Published - M.Tech S1 (R,S) Exam Dec 2021- Palakkad Cluster"),
            subtitle: Text(
                "It is hereby notified that the result of M.Tech S1 (R,S) Exam Dec 2021 Palakkad Cluster is published. The detailed result is available under the 'Result' tab of the University website and in student and College login. Candidates who desire to apply for the copy of answer scripts can register through the portal till 05.08.2022 (date applicable for both student and college) by remitting a fee of ₹500. Late requests for answer scripts will not be allowed.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            onTap: () {
              Navigator.of(context).pushNamed(routeNotificationDetails);
            },
          ),
          ListTile(
            /* leading: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeM0WDhcm_QwNm1geCFXYuAp8bUHM3zlc8kA&usqp=CAU"),*/
            leading: Icon(Icons.add_alert),
            title: Text(
                "Course/Exam Registration opened - MCA (2 Year) S4 (R) Exam June 2022"),
            subtitle: Text(
                "It is hereby informed that the course/exam registration for the following examination is opened in the KTU portal. Name of Examinations : MCA (2 Year) S4 (R) Exam June 2022 Students are directed to make submission through the e-portal and pay fee at college office on or before 03-08-2022. Last date for Colleges for submission to University is 05-08-2022.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            onTap: () {
              Navigator.of(context).pushNamed(routeNotificationDetails);
            },
          ),
        ],
      ),
    );
  }
}
