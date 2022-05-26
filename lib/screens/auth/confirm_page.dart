import 'package:flutter/material.dart';
import 'package:medapp/core/components/mainbutton.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context,"Sign Up"),
          SizedBox(
            height: context.height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "We sent a confirmation code to your number. Please enter the code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: FontConst.mediumFont,
                    color: ColorConst.black.withOpacity(0.5),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 47.5,height: 47.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConst.black.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text("0",style: TextStyle(fontSize: FontConst.largeFont),),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height*0.1,
                ),
                mainButton(context, "Confirm")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
