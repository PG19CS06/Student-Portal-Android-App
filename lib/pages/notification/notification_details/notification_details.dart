import 'package:flutter/material.dart';

class NotificationDetailsPage extends StatelessWidget {
  const NotificationDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              "https://www.google.com/maps/uv?pb=!1s0x3ba4846bda0b9525:0x1a6965b115fbfb96!3m1!7e115!4shttps://lh5.googleusercontent.com/p/AF1QipOdC2F6NEPWmXDkk-3f6yO0e3tAnBeMxvJ0kl3n%3Dw271-h160-k-no!5slbs+college+-+Google+Search!15zQ2dJZ0FRPT0&imagekey=!1e10!2sAF1QipOdC2F6NEPWmXDkk-3f6yO0e3tAnBeMxvJ0kl3n&hl=en&sa=X&ved=2ahUKEwi4wKGlhuT4AhWqm9gFHUu8AcgQoip6BAhEEAM",
              height: 150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "31 july 2022",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Result Published - M.Tech S1 (R,S) Exam Dec 2021- Palakkad Cluster",
           style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "It is hereby notified that the result of M.Tech S1 (R,S) Exam Dec 2021 Palakkad Cluster is published. The detailed result is available under the 'Result' tab of the University website and in student and College login. Candidates who desire to apply for the copy of answer scripts can register through the portal till 05.08.2022 (date applicable for both student and college) by remitting a fee of ₹500. Late requests for answer scripts will not be allowed. ",
              style: TextStyle(),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
