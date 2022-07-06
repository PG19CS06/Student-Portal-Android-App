import 'package:flutter/material.dart';
import 'package:student_portal_app/routing/route_constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeM0WDhcm_QwNm1geCFXYuAp8bUHM3zlc8kA&usqp=CAU"),
              title: Text("Notification Title $index"),
              subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dignissim rutrum arcu non dapibus. Sed sed est accumsan, porta est a, rhoncus risus. Nam non ante quis tortor accumsan aliquet sit amet ut tellus. Pellentesque viverra sodales est sed vestibulum. Quisque ut dictum elit, et ullamcorper augue. Quisque nec lacus efficitur, tempus felis ut, convallis lorem. Donec nec arcu in libero iaculis lobortis. Vestibulum mollis imperdiet mauris ut efficitur. Etiam in magna nisi. Nam in felis bibendum, dapibus eros ut, sollicitudin ligula.",
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
              onTap: (){
                Navigator.of(context).pushNamed(routeNotificationDetails);
              },
            );
          }),
    );
  }
}
