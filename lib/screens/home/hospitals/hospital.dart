import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';

class AboutHospital extends StatefulWidget {
  const AboutHospital({Key? key}) : super(key: key);

  @override
  State<AboutHospital> createState() => _AboutHospitalState();
}

class _AboutHospitalState extends State<AboutHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.chevron_left_outlined,size: FontConst.extraLargeFont+10,color: ColorConst.blue,),
                      Text("Back",style: TextStyle(fontSize: FontConst.mediumFont+2,fontWeight: FontWeight.w500,),)
                    ],
                  ),

                ],
              )
            ],
          )
        ],
      )
    );
  }
}