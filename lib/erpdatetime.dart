library erpdatetime;

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String DateTime;
  const HomePage({Key? key,required this.DateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                DateFormat("$DateTime");
              },
              child: Center(
                child: Text("DateTimeHandle"),
              )),
          Text(DateFormat("$DateTime")),
        ],
      ),
    );
  }
  static String DateFormat(date) {
    String dateformat;
    if (date.toString().length <= 8) {
      String year_recv = date.substring(0, 4);
      String month_recv = date.substring(4, 6);
      String day_recv = date.substring(6, 8);
      // dateformat = "$day_recv/$month_recv/$year_recv";
      dateformat = "$year_recv/$month_recv/$day_recv";
    } else {
      dateformat = date;
    }
    return dateformat;
  }

}
