import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initial Selected Value
    String dropdownvalue = 'Subject 1';

    // List of items in our dropdown menu
    var items = [
      'Subject 1',
      'Subject 2',
      'Subject 3',
      'Subject 4',
      'Subject 5',];
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton(
// Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
              },          ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              maxLines: 8, //or null
              decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(onPressed: (){}, child: const Text("Submit")),
          )
        ],
      ),
    );
  }
}
