import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  createState() => SplashScreen2State();
}

class SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color(0xFFFEF573),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 100.0),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset('assets/images/splash2.png'),
              ),
              Center(
                child: smallText(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 10.0),
                  Icon(Icons.circle),
                  SizedBox(width: 10.0),
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 10.0),
                  Icon(Icons.circle_outlined),
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
                        Navigator.pushNamed(context, AppRouter.onboarding3Route)
                      },
                      child: const Text(
                        "Next",
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

Widget smallText() {
  return const Text(
    "save your time...",
    style: TextStyle(
      fontSize: 25.0,
      fontFamily: 'CabinSketch',
      fontStyle: FontStyle.normal,
    ),
  );
}
