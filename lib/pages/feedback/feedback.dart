import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initial Selected Value
    String dropdownValue = 'Select Subject';

    // List of items in our dropdown menu
    var items = [
      'Select Subject',
      'Subject 1',
      'Subject 2',
      'Subject 3',
      'Subject 4',
      'Subject 5',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButtonFormField(
              decoration:
                  InputDecoration(border: OutlineInputBorder(gapPadding: 0)),
// Initial Value
              value: dropdownValue,

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
              onChanged: (String? newValue) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              maxLines: 16, //or null
              decoration: const InputDecoration.collapsed(
                  hintText: "Enter your text here",
                  border: OutlineInputBorder()),

            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(onPressed: () {}, child: const Text("Submit")),
          )
        ],
      ),
    );
  }
}
