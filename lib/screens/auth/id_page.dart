import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/components/mainbutton.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            signAppBar(context, "Your Personal ID"),
            SizedBox(
              height: context.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: context.width,
                      child: SvgPicture.asset(
                          "/Users/abdurahmonabdugafurov/Desktop/Developing/flutter/medapp/assets/icons/id.svg")),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Doctors use your ID to have an acces to your medical information . We have sent this ID and your password to your number so you don't forget them",
                        style: TextStyle(
                            fontSize: FontConst.mediumFont,
                            color: ColorConst.black.withOpacity(0.4)),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  textBeforeInput("Your ID"),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
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
                        Expanded(
                          flex: 5,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: context.height * 0.07,
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorConst.black.withOpacity(0.2)),
                              borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: ColorConst.black.withOpacity(0.15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "25983365",
                                style: TextStyle(fontSize: FontConst.mediumFont),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "copy",
                                  style: TextStyle(
                                    fontSize: FontConst.largeFont,
                                  ),
                                ),
                              ),
                              SvgPicture.asset("assets/icons/copy.svg")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.height*0.2,
                  ),
                  InkWell(
                    child: mainButton(context, "Go to your account "),
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
