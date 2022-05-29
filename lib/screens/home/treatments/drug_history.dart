import 'package:flutter/material.dart';
import 'package:medapp/core/components/home/treatment/text_for_traetment_details.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

class DrugHitory extends StatefulWidget {
  const DrugHitory({Key? key}) : super(key: key);

  @override
  State<DrugHitory> createState() => _DrugHitoryState();
}

class _DrugHitoryState extends State<DrugHitory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          signAppBar(context, "Taken drug details"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textForTreatmentDetails("Drug name"),
                textForTreatmentDetails2("Dilatrabon"),
                textForTreatmentDetails("Dose"),
                textForTreatmentDetails2("250 mg"),

                textForTreatmentDetails("Taking dates(start - end)"),
                textForTreatmentDetails2("start - end"),

                textForTreatmentDetails("How many times in a day"),
                textForTreatmentDetails2("2 times a day "),
                textForTreatmentDetails("Associated with"),
                textForTreatmentDetails2("Multiple sclerosis"),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}