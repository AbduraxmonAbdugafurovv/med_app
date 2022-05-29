import 'package:flutter/material.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

import '../../../core/components/home/treatment/text_for_traetment_details.dart';

class TreatmentDetails extends StatefulWidget {
  const TreatmentDetails({Key? key}) : super(key: key);

  @override
  State<TreatmentDetails> createState() => _TreatmentDetailsState();
}

class _TreatmentDetailsState extends State<TreatmentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context, "Tretment details "),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: CircleAvatar(
                          radius: context.height * 0.07,
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      "Abdullajonov murod",
                      style: TextStyle(
                          fontSize: FontConst.extraLargeFont,
                          fontWeight: FontWeight.w600),
                    )),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Center(
                        child: Text(
                      "Dermotologidt",
                      style: TextStyle(fontSize: FontConst.mediumFont),
                    )),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    textForTreatmentDetails("Clinic"),
                    textForTreatmentDetails2("Clinic medion"),
                    textForTreatmentDetails("Cinic location"),
                    textForTreatmentDetails2("Shayhontohur,district"),
                    textForTreatmentDetails("Start date"),
                    textForTreatmentDetails2("21.01.2022"),
                    textForTreatmentDetails("End date"),
                    textForTreatmentDetails2("30.01.2022"),
                    textForTreatmentDetails("Complaints date"),
                    textForTreatmentDetails2("Redness on the skin"),
                    textForTreatmentDetails("Diagnosis"),
                    textForTreatmentDetails2("Skin psoriasis"),
                    textForTreatmentDetails("Treatment"),
                    textForTreatmentDetails2(
                        "Diet ,Ozone therapy/6 days,tivortin 100.0/6 days"),
                    textForTreatmentDetails("Analysis"),
                    const Text('Blood'),
                    textForTreatmentDetails("Drugs being taken"),
                    SizedBox(
                      height: context.height * 0.2,
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return drugBeingMethod("", "100 ml");
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.height * 0.05,
          )
        ],
      ),
    );
  }

  drugBeingMethod(text1, text2) {
    return InkWell(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: FontConst.mediumFont + 2,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    text2,
                    style: TextStyle(fontSize: FontConst.mediumFont - 2),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: FontConst.mediumFont + 12,
                    color: ColorConst.black.withOpacity(0.5),
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 24,
            color: ColorConst.black.withOpacity(0.5),
          )
        ],
      ),
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            context: context,
            builder: (context) {
              return SizedBox(
                height: context.height * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: context.width * 0.33),
                            child: Text(
                              "Salicylic",
                              style: TextStyle(
                                  fontSize: FontConst.mediumFont + 2,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const  Expanded(child: SizedBox()),
                          Text(
                            "Ok",
                            style: TextStyle(
                                fontSize: FontConst.mediumFont,
                                fontWeight: FontWeight.w600,
                                color: ColorConst.blue),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorConst.black.withOpacity(0.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textForTreatmentDetails("Drug name"),
                          textForTreatmentDetails2("Salicylic"),
                          SizedBox(height: context.height*0.01,),
                          textForTreatmentDetails("Dose"),
                          textForTreatmentDetails2("250 mg"),
                          SizedBox(height: context.height*0.01,),
                          textForTreatmentDetails("Taking dates(start-end)"),
                          textForTreatmentDetails2("10-20"),
                          textForTreatmentDetails("How many times"),
                          textForTreatmentDetails2("2 times a day"),
                          textForTreatmentDetails("Assosiated with"),
                          textForTreatmentDetails2("Multiple sclerosis"),
                          textForTreatmentDetails("Comments"),
                          textForTreatmentDetails2("Commentsssss")
                        ],
                      ),
                    )
                  ],
                ),
              );
            });
      },
    );
  }
}
