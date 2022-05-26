import 'package:flutter/material.dart';
import 'package:medapp/core/components/mainbutton.dart';
import 'package:medapp/core/components/text_before_input.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();
  final _controller6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context, "Sign Up"),
          SizedBox(
            height: context.height * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We sent a confirmation code to your number. Please enter the code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: FontConst.mediumFont,
                    color: ColorConst.black.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: context.height*0.12,
                ),
                textBeforeInput("Confirmation code "),
                SizedBox(height: context.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inputChangeCode(context, _controller1, first: true, last: true),
                    inputChangeCode(context, _controller2, first: true, last: true),
                    inputChangeCode(context, _controller3, first: true, last: true),
                    inputChangeCode(context, _controller4, first: true, last: true),
                    inputChangeCode(context, _controller5, first: true, last: true),
                    inputChangeCode(context, _controller6, first: true, last: true),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.12,
                ),
                InkWell(child: mainButton(context, "Confirm"),onTap: (){
                  NavigationService.instance.pushNamed("id");
                },)
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox inputChangeCode(
      BuildContext context, TextEditingController controller,
      {required bool first, required bool last}) {
    return SizedBox(
      height: context.height * 0.06,
      width: context.width * 0.12,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controller,
          autocorrect: true,
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          onChanged: (v) {
              FocusScope.of(context).nextFocus();
          },
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: ColorConst.black.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(12)),
            hintText: "0",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: ColorConst.blue),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
