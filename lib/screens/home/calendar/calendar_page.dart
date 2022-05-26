import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';

import '../../../core/components/nomediccationsandappointments.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today's medications",
            style: TextStyle(
              fontSize: FontConst.mediumFont,
              fontWeight: FontWeight.w600,
              color: ColorConst.black.withOpacity(0.4),
            ),
          ),
          SizedBox(
            height: context.height * 0.1,
          ),
          medicationappoint(context, "No medications",
              "They will appear here only when doctor adds them to your account "),
          SizedBox(
            height: context.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Monthly appointments",
                style: TextStyle(
                    fontSize: FontConst.mediumFont,
                    color: ColorConst.black.withOpacity(0.5),
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    "January 2022",
                    style: TextStyle(
                        fontSize: FontConst.mediumFont,
                        color: ColorConst.blue,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.05,
          ),
          Row(
            children: [
              Text(
                "Today's appointments",
                style: TextStyle(
                    fontSize: FontConst.mediumFont,
                    color: ColorConst.black.withOpacity(0.5),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.05,
          ),
          Center(
              child: medicationappoint(context, "No appointments",
                  "You haven't added any appointment yet "))
        ],
      ),
    );
  }
}
