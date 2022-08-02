import 'package:flutter/material.dart';
import 'package:student_portal_app/app_constants.dart';
import 'package:student_portal_app/image_assets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50,
                child: Image.asset(
                  IA_USER_AVATAR,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Raj",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                spacer8,
                Text("9624832548",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                spacer8,
                Text("raj@gmail.com",
                    style: TextStyle(fontSize: 18,color: Colors.black54)),
                spacer8,
              ],
            ),
            spacer32,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Admission no.",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  spacer4,
                  TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                        counterText: "",
                        labelText: "2020B6817",
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  spacer8,
                  Text("Date of birth",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  spacer4,
                  TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                        counterText: "",
                        labelText: "02/07/2000",
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  spacer8,
                  Text("Course",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  spacer4,
                  TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                        counterText: "",
                        labelText: "Btech",
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  spacer8,
                  Text("Branch",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  spacer4,
                  TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                        counterText: "",
                        labelText: "Computer Science and Engineering",
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  spacer8,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
