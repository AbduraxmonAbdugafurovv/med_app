import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';

import '../../core/widget/sign_appbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Sign up in order to get a full acces to the system",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: FontConst.mediumFont,
                      color: ColorConst.black.withOpacity(0.7),
                    ),
                  ),
                ),
                textBeforeInput("Full name"),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Form(
                  child: Column(
                    children: [
                      inputfield("Enter your full name")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextFormField inputfield(text) {
    return TextFormField(
                      decoration: InputDecoration(
                          hintText: text,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value!.length < 4) {
                          return "4 tadan kam";
                        }
                      },
                    );
  }

  Text textBeforeInput(text) => Text(
        text,
        style: TextStyle(
          fontSize: FontConst.mediumFont,
        ),
      );
}
