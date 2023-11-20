import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';
import 'package:kts/src/screens/splashScreen/splash_screen2.dart';

class SplashScreen extends StatefulWidget {
  @override
  createState() => SplashScreenState();
}


class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE4CBF2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 100.0),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Image.asset('assets/images/splash1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: smallText(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle),
                SizedBox(width: 10.0),
                Icon(Icons.circle_outlined),
                SizedBox(width: 10.0),
                Icon(Icons.circle_outlined),
                SizedBox(width: 10.0),
                Icon(Icons.circle_outlined),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => {
                      Navigator.pushNamedAndRemoveUntil(
                          context, AppRouter.authRoute, ((route) => false))
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () => {
                      Navigator.pushNamed(context, AppRouter.onboarding2Route)
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
    );
  }
}

Widget smallText() {
  return const Text(
    "Easier than ever...",
    style: TextStyle(
      fontSize: 25.0,
      fontFamily: 'CabinSketch',
      fontStyle: FontStyle.normal,
    ),
  );
}
