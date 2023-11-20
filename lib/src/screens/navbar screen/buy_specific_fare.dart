import 'package:flutter/material.dart';

class BuySpecificFare extends StatefulWidget {
  Function setFormState;

  BuySpecificFare({
    required this.setFormState,
  });
  @override
  _BuySpecificFareState createState() => _BuySpecificFareState();
}

class _BuySpecificFareState extends State<BuySpecificFare> {
  String? _selectedItem = 'Single Trip';

  final List<String> _items = [
    'Single Trip',
    'Round Trip',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.setFormState(1);
        return false;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Buy Specific Number of Fares",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton<String>(
                value: _selectedItem,
                isExpanded: true,
                items: _items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (selectedItem) {
                  setState(() {
                    _selectedItem = selectedItem;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 0),
                backgroundColor: const Color(0xFFF87F5B),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // set the border radius here
                ),
                padding: const EdgeInsets.all(15.0),
                // set the background color here
              ),
              onPressed: () {
                widget.setFormState(3);
              },
              child: const Text(
                "Confirm",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 0),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // set the border radius here
                ),
                padding: const EdgeInsets.all(15.0),
                // set the background color here
              ),
              onPressed: () {
                widget.setFormState(1);
              },
              child: const Text(
                "Back",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFF87F5B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
