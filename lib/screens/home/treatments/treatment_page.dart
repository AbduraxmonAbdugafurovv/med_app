import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';

import '../../../core/constant/constant.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  State<TreatmentPage> createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
  @override
  Widget build(BuildContext context) {
    var tabindex = context.watch<HomeCubit>().tabIndex;
    return BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is InitialHome) {
            return Scaffold(
              body: Column(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: context.height * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                  width: context.width * 0.08,
                                  child:
                                      Image.asset("assets/icons/profile.png"),
                                ),
                              ),
                              SizedBox(
                                  width: context.width * 0.2,
                                  child:
                                      SvgPicture.asset("assets/icons/med.svg")),
                              SizedBox(
                                width: context.width * 0.1,
                                child: SvgPicture.asset(
                                    "assets/icons/notification.svg"),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      "Current treatment",
                                      style: TextStyle(
                                        fontSize: FontConst.mediumFont,
                                        fontWeight: FontWeight.w600,
                                        color: tabindex == 0
                                            ? ColorConst.blue
                                            : ColorConst.black,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    context.read<HomeCubit>().changeTab(0);
                                  },
                                ),
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      "Medical history",
                                      style: TextStyle(
                                        fontSize: FontConst.mediumFont,
                                        fontWeight: FontWeight.w600,
                                        color: tabindex == 1
                                            ? ColorConst.blue
                                            : ColorConst.black,
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    context.read<HomeCubit>().changeTab(1);
                                  },
                                ),
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      "Drug history",
                                      style: TextStyle(
                                        fontSize: FontConst.mediumFont,
                                        fontWeight: FontWeight.w600,
                                        color: tabindex == 2
                                            ? ColorConst.blue
                                            : ColorConst.black,
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    context.read<HomeCubit>().changeTab(2);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: ColorConst.black.withOpacity(0.7),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
            return const Text("Hato");
          }
        },
        listener: (context, state) {});
  }
}
