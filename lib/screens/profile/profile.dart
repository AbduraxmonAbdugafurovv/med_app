import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/components/text_before_input.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/widget/sign_appbar.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is InitialHome) {
            return Column(
              children: [
                signAppBar(context, "My Profile"),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.01,
                      ),
                      const CircleAvatar(
                        radius: 60,
                        // backgroundImage: AssetImage("assets/images/i.webp"),
                      ),
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          width: context.width * 0.5,
                          height: context.height * 0.06,
                          decoration: BoxDecoration(
                              color: ColorConst.kPimaryColor,
                              borderRadius: BorderRadius.circular(7)),
                          child: Text(
                            "Upload new picture",
                            style: TextStyle(
                                fontSize: FontConst.mediumFont,
                                color: ColorConst.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      InkWell(
                        child: Text(
                          "Delete photo",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: FontConst.mediumFont,
                              color: ColorConst.red),
                        ),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textBeforeInput("ID"),
                            Container(
                              width: double.infinity,
                              height: context.height * 0.06,
                              decoration: BoxDecoration(
                                  color: ColorConst.black.withOpacity(0.1),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    const Expanded(child: Text("2343534534")),
                                    InkWell(
                                      child: SvgPicture.asset(
                                          "assets/icons/copy.svg"),
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              ),
                            ),
                            textBeforeInput("Full name"),
                            TextFormField(
                              initialValue: "Mavlon",
                              decoration: InputDecoration(
                                border: inputBorder(),
                              ),
                            ),
                            textBeforeInput("Date of birth"),
                            TextFormField(
                              initialValue: "24.11.2000",
                              decoration: InputDecoration(
                                prefix: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/calendar-event.svg"),
                                ),
                                border: inputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: context.height * 0.03,
                            ),
                            textBeforeInput("Gender"),
                            InkWell(
                              child: Container(
                                height: context.height * 0.06,
                                width: context.width * 0.4,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConst.black.withOpacity(0.4)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorConst.black
                                                  .withOpacity(0.6)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        "Male",
                                        style: TextStyle(
                                            fontSize: FontConst.mediumFont + 2),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                context.watch<HomeCubit>().selectGender(0);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          } else if (state is LoadingHome) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return const Text("State da Erorr");
          }
        },
      ),
    );
  }

  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
    );
  }
}
