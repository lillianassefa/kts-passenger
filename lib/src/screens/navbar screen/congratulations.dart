import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';


class Congratualtions extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70.0),
          ),
          const Text(
            "Congratulations 🎉",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic),
          ),
          const Text(
            "You have Successfully",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
          ),
          const Text(
            "Purchased the Package",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50.0),
          ),
          SizedBox(
            width: 200,
            child: Image.asset('assets/images/money.png'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50.0),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(300, 0),
              backgroundColor: const Color(0xFFF87F5B),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15), // set the border radius here
              ),
              padding: const EdgeInsets.all(20.0),
              // set the background color here
            ),
            onPressed: () {},
            child: const Text(
              "Buy Another",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(300, 0),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15), // set the border radius here
              ),
              padding: const EdgeInsets.all(20.0),
              // set the background color here
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.homeRoute);
            },
            child: const Text(
              "Main Menu",
              style: TextStyle(fontSize: 20.0, color: Color(0xFFF87F5B)),
            ),
          ),
        ],
      ),
    );
  }
}
