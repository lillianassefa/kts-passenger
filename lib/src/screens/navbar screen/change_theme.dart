import 'package:flutter/material.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  _ChangeThemeState createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  bool isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Select Your Theme',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/theme.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView(
                shrinkWrap: true,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(30, 0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // set the border radius here
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isDarkMode = false;
                      });
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/light.png'),
                        ),
                        const Text(
                          "Light Mode",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFFF87F5B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(70, 0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // set the border radius here
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isDarkMode = true;
                      });
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/dark.png'),
                        ),
                        const Text(
                          "Dark Mode",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFFF87F5B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
      ),
    );
  }
}
