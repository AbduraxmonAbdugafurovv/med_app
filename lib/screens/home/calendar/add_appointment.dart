import 'package:flutter/material.dart';
import 'package:medapp/core/components/text_before_input.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';

class AddApointmentPage extends StatefulWidget {
  const AddApointmentPage({Key? key}) : super(key: key);

  @override
  State<AddApointmentPage> createState() => _AddApointmentPageState();
}

class _AddApointmentPageState extends State<AddApointmentPage> {
  GlobalKey _key = GlobalKey<FormState>();
  List<String> region = [
    "Male",
    "Female",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: context.height * 0.06,
              ),
              Row(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: FontConst.mediumFont,
                            color: ColorConst.blue),
                      ),
                    ),
                    onTap: () {
                      NavigationService.instance.pop();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "Book an appointment",
                      style: TextStyle(
                          fontSize: FontConst.mediumFont + 2,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Divider(
                color: ColorConst.black.withOpacity(0.5),
              )
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textBeforeInput("Region"),
                  Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
