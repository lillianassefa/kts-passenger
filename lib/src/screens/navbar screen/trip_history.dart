import 'package:flutter/material.dart';

class TripHistory extends StatefulWidget {
  @override
  createState() => TripHistoryState();
}

class TripHistoryState extends State<TripHistory> {
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Your Trip History",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20), // reduced height between image and table
            Image.asset('assets/images/trip.png', width: 200),
            const SizedBox(height: 20), // reduced height between image and table
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  _buildTableRow("Date", "Time", "Route"),
                  _buildTableRow("Today", "12:03:44", "AK-KT"),
                  _buildTableRow("Yesterday", "12:03:44", "AK-KT"),
                  _buildTableRow("Friday", "12:03:44", "AK-KT"),
                  _buildTableRow("Thursday", "12:03:44", "AK-KT"),
                  _buildTableRow("February 18, 2023", "11:21:13", "AK-JT"),
                  _buildTableRow("February 17, 2023", "18:45:32", "AK-JT"),
                  _buildTableRow("February 16, 2023", "08:12:59", "AK-JT"),
                  _buildTableRow("February 15, 2023", "14:37:28", "AK-JT"),
                  _buildTableRow("February 14, 2023", "16:55:44", "AK-JT"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String date, String time, String route) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(date, textAlign: TextAlign.start), // align date cell to left
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(time, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(route, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
