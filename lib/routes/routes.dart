import 'package:flutter/material.dart';
import 'package:medapp/screens/auth/onboarding.dart';
import 'package:medapp/screens/auth/sign_up.dart';
import 'package:medapp/screens/auth/splash.dart';

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
    }
    return null;
  }
}
