import 'package:flutter/material.dart';
import 'package:medapp/screens/auth/confirm_page.dart';
import 'package:medapp/screens/auth/id_page.dart';
import 'package:medapp/screens/auth/onboarding.dart';
import 'package:medapp/screens/auth/sign_in.dart';
import 'package:medapp/screens/auth/sign_up.dart';
import 'package:medapp/screens/auth/splash.dart';
import 'package:medapp/screens/home/view/bottom_page.dart';

class MyRoutes {
  static final MyRoutes _instance = MyRoutes._init();
  static MyRoutes get instance => _instance;
  MyRoutes._init();

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "splash":
        return MaterialPageRoute(builder: (context) => const Splash());
      case "onboarding":
        return MaterialPageRoute(builder: (context) => const OnboardingPage());
      case "sign_up":
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case "confirm":
        return MaterialPageRoute(builder: (context) => const ConfirmPage());
      case "id":
        return MaterialPageRoute(builder: (context) => const IDPage());
      case "sign_in":
        return MaterialPageRoute(builder: (context) => const SignInPage());
        case "bottomnav":
        return MaterialPageRoute(builder: (context) => const BottomNavPage());
    }
    return null;
  }
}
