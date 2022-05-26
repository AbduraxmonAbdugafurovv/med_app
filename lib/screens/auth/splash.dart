import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/init/navigation_service.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),() {
      NavigationService.instance.pushnamedRemuveUntill("onboarding");
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPimaryColor,
      body: Center(
        child: SvgPicture.asset("assets/icons/splash.svg"),
      ),
    );
  }
}