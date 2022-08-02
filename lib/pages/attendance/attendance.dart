import 'package:flutter/material.dart';
import 'package:student_portal_app/app_constants.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String dropdownvalue = 'Select Subject';

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
        title: Text("Attendance"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButtonFormField(
                decoration:
                InputDecoration(border: OutlineInputBorder(gapPadding: 0)),
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
                onChanged: (String? newValue) {},
              ),
            ),

            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Total hours: 11",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black54)),
            ),
            spacer8,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Present: 10",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black54)),
            ),
            spacer8,

          ],
        ),
      ),
    );
  }
}
