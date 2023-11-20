import 'package:flutter/material.dart';
import 'package:kts/src/screens/authentication/auth_screen.dart';
import 'package:kts/src/screens/home_screen.dart';
import 'package:kts/src/screens/navbar%20screen/about_kts.dart';
import 'package:kts/src/screens/navbar%20screen/change_password.dart';
import 'package:kts/src/screens/navbar%20screen/change_theme.dart';
import 'package:kts/src/screens/navbar%20screen/deactivate_my_rfid.dart';
import 'package:kts/src/screens/navbar%20screen/request_new_rfid.dart';
import 'package:kts/src/screens/splashScreen/splash_screen1.dart';
import 'package:kts/src/screens/splashScreen/splash_screen2.dart';
import 'package:kts/src/screens/splashScreen/splash_screen3.dart';
import 'package:kts/src/screens/splashScreen/splash_screen4.dart';
import 'package:kts/src/screens/navbar%20screen/profile_screen.dart';
import 'package:kts/src/screens/navbar%20screen/navBar_screen.dart';


class AppRouter {
  static const String onboardingRoute = '/onboarding';
  static const String onboarding2Route = '/onboarding2';
  static const String onboarding3Route = '/onboarding3';
  static const String onboarding4Route = '/onboarding4';
  static const String authRoute = '/auth';
  static const String homeRoute = '/home';
  static const String deactivateRfidRoute = '/deactiviateRfid';
  static const String requestNewRfidRoute = '/requestNewRfid';
  static const String changePasswordRoute = '/changePassword';
  static const String changeThemeRoute = '/changeTheme';
  static const String aboutKtsRoute = '/aboutKts';
  static const String profileRoute = '/profile';
  static const String navBarRoute = '/navBar';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case onboarding2Route:
        return MaterialPageRoute(builder: (_) => SplashScreen2());
      case onboarding3Route:
        return MaterialPageRoute(builder: (_) => SplashScreen3());
      case onboarding4Route:
        return MaterialPageRoute(builder: (_) => SplashScreen4());
      case authRoute:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case deactivateRfidRoute:
        return MaterialPageRoute(builder: (_) => DeactivateRfid());
      case requestNewRfidRoute:
        return MaterialPageRoute(builder: (_) => RequestNewRfid());
      case changePasswordRoute:
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case changeThemeRoute:
        return MaterialPageRoute(builder: (_) => const ChangeTheme());
      case aboutKtsRoute:
        return MaterialPageRoute(builder: (_) => const AboutKts());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case navBarRoute:
        return MaterialPageRoute(builder: (_) => Navbar());
      
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
