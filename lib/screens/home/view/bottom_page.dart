import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';
import 'package:medapp/screens/home/calendar/calendar_page.dart';
import 'package:medapp/screens/home/doctors/doctors_page.dart';
import 'package:medapp/screens/home/hospitals/hospitals.dart';
import 'package:medapp/screens/home/treatments/treatment_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final List _pages = const [
    CalendarPage(),
    TreatmentPage(),
    DoctorsPage(),
    HospitalsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        int selectedIndex = context.watch<HomeCubit>().selected;
        if (state is LoadingHome) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is InitialHome) {
          return Scaffold(
            body: _pages[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              unselectedLabelStyle:
                  TextStyle(color: ColorConst.black.withOpacity(0.5)),
              selectedFontSize: 12,
              items: [
                BottomNavigationBarItem(
                  label: "home",
                  icon: selectedIndex == 0
                      ? SvgPicture.asset(
                          "assets/icons/select_home.svg",
                        )
                      : SvgPicture.asset(
                          "assets/icons/home.svg",
                        ),
                ),
                BottomNavigationBarItem(
                  label: "Treatments",
                  icon: selectedIndex == 1
                      ? SvgPicture.asset(
                          "assets/icons/select_fill.svg",
                        )
                      : SvgPicture.asset(
                          "assets/icons/fill.svg",
                        ),
                ),
                BottomNavigationBarItem(
                  label: "Doctors",
                  icon: selectedIndex == 2
                      ? SvgPicture.asset(
                          "assets/icons/select_doctors.svg",
                        )
                      : SvgPicture.asset(
                          "assets/icons/doctors.svg",
                        ),
                ),
                BottomNavigationBarItem(
                  label: "Hospitals",
                  icon: selectedIndex == 3
                      ? SvgPicture.asset(
                          "assets/icons/select_hospitals.svg",
                        )
                      : SvgPicture.asset(
                          "assets/icons/hospital.svg",
                        ),
                ),
              ],
              currentIndex: selectedIndex,
              onTap: (index) {
                context.read<HomeCubit>().changePage(index);
              },
            ),
          );
        } else {
          return const Text("Hatoo");
        }
      },
    );
  }
}
