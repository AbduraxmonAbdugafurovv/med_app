import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';

import '../../core/components/mainbutton.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.2,
            ),
            SvgPicture.asset("assets/icons/med.svg"),
            SizedBox(
              height: context.height * 0.1,
            ),
            Text(
              "Your madical data is always with you",
              style: TextStyle(
                  fontSize: FontConst.extraLargeFont + 16,
                  fontWeight: FontWeight.w600,
                  color: ColorConst.black),
            ),
            SizedBox(
              height: context.height * 0.035,
            ),
            Text(
              "Nunc orci sed sed posuere volutpad variusegestas sit . Amet  ,suscipiteget dis fusce quam in aliquet pulvinar.",
              style: TextStyle(
                  fontSize: FontConst.largeFont - 2,
                  fontWeight: FontWeight.w500,
                  color: ColorConst.black.withOpacity(0.5)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.height * 0.2,
            ),
            InkWell(
              child: mainButton(
                context,
                "Get Started",
              ),
              onTap: () {
                NavigationService.instance.pushNamed("sign_up");
              },
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            InkWell(
              child: loginBotton(context),
              onTap: () {
                NavigationService.instance.pushNamed("sign_in");
              },
            ),
          ],
        ),
      ),
    );
  }

  Container loginBotton(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.height * 0.06,
      width: context.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: ColorConst.kPimaryColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "Log In",
        style: TextStyle(
            fontSize: FontConst.largeFont - 2, color: ColorConst.kPimaryColor),
      ),
    );
  }
}
