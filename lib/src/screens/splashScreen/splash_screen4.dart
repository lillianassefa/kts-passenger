import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';

class SplashScreen4 extends StatefulWidget {
  @override
  createState() => SplashScreen4State();
}

class SplashScreen4State extends State<SplashScreen4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color(0xFF97E4B2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 100.0),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset('assets/images/splash4.png'),
              ),
              Center(
                child: smallText(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 10.0),
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 10.0),
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 10.0),
                  Icon(Icons.circle),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25, right: 25, bottom: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => {
                        Navigator.pop(context),
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () => {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRouter.authRoute, (route) => false),
                      },
                      child: const Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget image() {
  return Image.network("");
}



Widget smallText() {
  return const Text(
    "connected than ever...",
    style: TextStyle(
      fontSize: 25.0,
      fontFamily: 'CabinSketch',
      fontStyle: FontStyle.normal,
    ),
  );
}
