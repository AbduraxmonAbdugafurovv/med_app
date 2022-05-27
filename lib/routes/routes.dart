import 'package:flutter/material.dart';
import 'package:medapp/screens/auth/confirm_page.dart';
import 'package:medapp/screens/auth/id_page.dart';
import 'package:medapp/screens/auth/onboarding.dart';
import 'package:medapp/screens/auth/sign_in.dart';
import 'package:medapp/screens/auth/sign_up.dart';
import 'package:medapp/screens/auth/splash.dart';
import 'package:medapp/screens/home/calendar/add_appointment.dart';
import 'package:medapp/screens/home/view/bottom_page.dart';
import 'package:medapp/screens/profile/profile.dart';

class MyRoutes {
  static final MyRoutes _instance = MyRoutes._init();
  static MyRoutes get instance => _instance;
  MyRoutes._init();

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "splash":
        return route(const Splash());
      case "onboarding":
        return route(const OnboardingPage());
      case "sign_up":
        return route(const SignUpPage());
      case "confirm":
        return route(const ConfirmPage());
      case "id":
        return route(const IDPage());
      case "sign_in":
        return route(const SignInPage());
      case "bottomnav":
        return route(const BottomNavPage());
      case "add_apointment":
        return route(const AddApointmentPage());
        case "profile":
        return route(const ProfilePage());
    }
    return null;
  }

  MaterialPageRoute<dynamic> route(page) =>
      MaterialPageRoute(builder: (context) => page);
}
