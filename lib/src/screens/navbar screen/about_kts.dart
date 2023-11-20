import 'package:flutter/material.dart';

class AboutKts extends StatelessWidget {
  const AboutKts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            'About KTS',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            child: Image.asset('assets/images/aboutKts.png'),
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'KTS is a smart bus ticketing solution that enables passengers to pay for their fares using RFID cards.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'KTS offers easy recharging of account, real-time bus location, travel history, and location-based bus recommendations.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Experience a seamless and efficient public transportation experience with KTS.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(300, 0),
              backgroundColor: const Color(0xFFF87F5B),
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),

                // set the border radius here
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Save",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
