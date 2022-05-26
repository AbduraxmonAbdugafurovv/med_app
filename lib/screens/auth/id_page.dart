import 'package:flutter/material.dart';
import 'package:medapp/core/components/text_before_input.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

class IDPage extends StatefulWidget {
  const IDPage({Key? key}) : super(key: key);

  @override
  State<IDPage> createState() => _IDPageState();
}

class _IDPageState extends State<IDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context, "Your Personal ID"),
          SizedBox(
            height: context.height * 0.3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Doctors use your ID to have an acces to your medical information . We have sent this ID and your password to your number so you don't forget them",
                      style: TextStyle(
                          fontSize: FontConst.mediumFont,
                          color: ColorConst.black.withOpacity(0.4)),
                      textAlign: TextAlign.center),
                ),
                textBeforeInput("Your ID"),
                Container(
                  width: context.width,
                  height: context.height * 0.07,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorConst.black.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
