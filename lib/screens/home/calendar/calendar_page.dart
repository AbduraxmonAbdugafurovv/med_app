import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/components/mainbutton.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../core/components/nomediccationsandappointments.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is InitialHome) {
          var checkTable = context.watch<HomeCubit>().checkTable;
          return Scaffold(
            body: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: context.width * 0.08,
                              child: Image.asset("assets/icons/profile.png"),
                            ),
                          ),
                          onTap: (){
                            NavigationService.instance.pushNamed("profile");
                          },
                        ),
                        SizedBox(
                            width: context.width * 0.2,
                            child: SvgPicture.asset("assets/icons/med.svg")),
                        SizedBox(
                          width: context.width * 0.1,
                          child:
                              SvgPicture.asset("assets/icons/notification.svg"),
                        ),
                      ],
                    ),
                    Divider(
                      color: ColorConst.black.withOpacity(0.7),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
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
                          medicationappoint(context, "No medications",
                              "They will appear here only when doctor adds them to your account "),
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
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "January 2022",
                                      style: TextStyle(
                                          fontSize: FontConst.mediumFont,
                                          color: ColorConst.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      color: ColorConst.blue,
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  context.read<HomeCubit>().checkingTable();
                                },
                              ),
                            ],
                          ),
                          SfCalendar(
                            view: CalendarView.month,
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
                            height: context.height * 0.1,
                          ),
                          Center(
                            child: medicationappoint(context, "No appointments",
                                "You haven't added any appointment yet "),
                          ),
                          SizedBox(
                            height: context.height * 0.1,
                          ),
                          InkWell(
                            child: mainButton(context, "Add new appointment"),
                            onTap: () {
                              NavigationService.instance
                                  .pushNamed("add_apointment");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state is ErrorHome) {
          return const Center(
            child: Text("State error"),
          );
        } else if (state is LoadingHome) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else {
          return const Text("Binnasa error");
        }
      },
    );
  }
}
