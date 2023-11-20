import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kts/src/router/router.dart';

void main() {
  // Add the following lines to specify your logo as the app icon
  var appIcon = AssetImage('assets/icons/KTS Logo.png');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp(appIcon: appIcon));
}

class MyApp extends StatelessWidget {
  final AssetImage appIcon;

  const MyApp({Key? key, required this.appIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Segoeui'),
      debugShowCheckedModeBanner: false,
      title: 'KTS Passanger',
      initialRoute: AppRouter.onboardingRoute,
      onGenerateRoute: AppRouter.generateRoute,
      // Set the app icon
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: appIcon,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
