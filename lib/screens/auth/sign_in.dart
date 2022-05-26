import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context, "Sign In"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "Log in to your account",
                  style: TextStyle(
                      fontSize: FontConst.mediumFont,
                      color: ColorConst.black.withOpacity(0.6)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
