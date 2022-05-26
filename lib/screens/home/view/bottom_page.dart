import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  int _selected = 0;
  final List _pages = const [
    CalendarPage(),
    TreatmentPage(),
    DoctorsPage(),
    HospitalsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _pages,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: _selected == 0
                ? SvgPicture.asset(
                    "assets/icons/select_home.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/home.svg",
                  ),
          ),
          BottomNavigationBarItem(
            label: "Treatments",
            icon:  _selected == 1
                ? SvgPicture.asset(
                    "assets/icons/select_fill.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/fill.svg",
                  ), ),
          BottomNavigationBarItem(
            label: "Doctors",
            icon:  _selected == 2
                ? SvgPicture.asset(
                    "assets/icons/select_doctors.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/doctors.svg",
                  ),
          ),
          BottomNavigationBarItem(
            label: "Hospitals",
            icon:  _selected == 3
                ? SvgPicture.asset(
                    "assets/icons/select_hospitals.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/hospital.svg",
                  ),
          ),
        ],
        currentIndex: _selected,
        onTap: (index) {
          setState(() {
            _selected = index;
          });
        },
      ),
    );
  }
}
