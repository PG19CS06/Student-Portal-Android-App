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
                "friday 12 july 2022",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
           style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ultricies dolor vitae volutpat bibendum. Aenean vitae ullamcorper dui. Phasellus consectetur blandit tortor, id laoreet ante viverra in. Quisque augue turpis, hendrerit id nunc sit amet, condimentum viverra magna. Sed egestas pellentesque commodo. Ut at eros elit. Donec rutrum metus placerat, feugiat ipsum dictum, dapibus nisi.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ultricies dolor vitae volutpat bibendum. Aenean vitae ullamcorper dui. Phasellus consectetur blandit tortor, id laoreet ante viverra in. Quisque augue turpis, hendrerit id nunc sit amet, condimentum viverra magna. Sed egestas pellentesque commodo. Ut at eros elit. Donec rutrum metus placerat, feugiat ipsum dictum, dapibus nisi.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ultricies dolor vitae volutpat bibendum. Aenean vitae ullamcorper dui. Phasellus consectetur blandit tortor, id laoreet ante viverra in. Quisque augue turpis, hendrerit id nunc sit amet, condimentum viverra magna. Sed egestas pellentesque commodo. Ut at eros elit. Donec rutrum metus placerat, feugiat ipsum dictum, dapibus nisi.\nUt scelerisque molestie felis. Phasellus vitae accumsan urna. Nulla porta ex dolor, vitae porta ex malesuada nec. Maecenas egestas imperdiet ligula, ut consequat ipsum aliquam at. Nullam mollis sodales vehicula. Cras tincidunt, dui nec ornare vulputate, lectus dui pharetra mauris, id imperdiet nisi purus sed ",
              style: TextStyle(),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
