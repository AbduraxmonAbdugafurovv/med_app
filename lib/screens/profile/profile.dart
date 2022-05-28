import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/components/home/gender_types.dart';
import 'package:medapp/core/components/inputfield.dart';
import 'package:medapp/core/components/text_before_input.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/widget/sign_appbar.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';
import '../../core/components/home/add_acc_button.dart';
import '../../core/components/home/cancel_button.dart';
import '../../core/components/home/delete_picture.dart';
import '../../core/components/home/inputborder.dart';
import '../../core/components/home/logout_button.dart';
import '../../core/components/home/profile_id.dart';
import '../../core/components/home/profile_input.dart';
import '../../core/components/home/save_button.dart';
import '../../core/components/home/swith.dart';
import '../../core/components/home/text_visibily.dart';
import '../../core/components/home/upload_new_picture.dart';
import '../../core/widget/one_gender.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    int gender = context.watch<HomeCubit>().gender;
    final nameConroller = context.watch<HomeCubit>().nameController;
    final dataController = context.watch<HomeCubit>().dataBirhtController;
    final emailController = context.watch<HomeCubit>().emailController;
    final phoneNumberController =
        context.watch<HomeCubit>().phonenumberController;
    bool profileVisibl = context.watch<HomeCubit>().profileVisibility;
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is InitialHome) {
            return Column(
              children: [
                signAppBar(context, "My Profile"),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        const CircleAvatar(
                          radius: 60,
                        ),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        InkWell(
                          child: uploadPicture(context),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: context.height * 0.02,
                        ),
                        InkWell(
                          child: deletePicture(),
                          onTap: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textBeforeInput("ID"),
                              profileID(context),
                              textBeforeInput("Full name"),
                              profileInput(nameConroller),
                              textBeforeInput("Date of birth"),
                              TextFormField(
                                controller: dataController,
                                decoration: InputDecoration(
                                  prefix: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: SvgPicture.asset(
                                        "assets/icons/calendar-event.svg"),
                                  ),
                                  border: inputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.length < 4) {
                                    return "4 tadan kam bo'lmasligi lozim";
                                  }
                                },
                              ),
                              SizedBox(
                                height: context.height * 0.03,
                              ),
                              textBeforeInput("Gender"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  genderTypesContaianer(
                                      context, gender, 0, "Male"),
                                  genderTypesContaianer(
                                      context, gender, 1, "Female"),
                                ],
                              ),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              oneGender(context, gender),
                              SizedBox(height: context.height * 0.03),
                              textBeforeInput("Address"),
                              // profileInput(),
                              SizedBox(height: context.height * 0.03),
                              textBeforeInput("Phone number"),
                              profileInput(phoneNumberController),
                              SizedBox(height: context.height * 0.03),
                              textBeforeInput("Email"),
                              profileInput(emailController),
                              SizedBox(height: context.height * 0.03),
                              sWitch(profileVisibl, context),
                              Divider(color: ColorConst.black.withOpacity(0.4)),
                              textProfileVisibilty(),
                              SizedBox(height: context.height * 0.05),
                              Row(
                                children: [
                                  SizedBox(
                                    width: context.width * 0.2,
                                  ),
                                  cencelButton(context),
                                  SizedBox(
                                    width: context.width * 0.12,
                                  ),
                                  saveButton(context),
                                ],
                              ),
                              SizedBox(
                                height: context.height * 0.06,
                              ),
                              InkWell(
                                child: addAccountButton(context),
                                onTap: () {
                                  showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    context: context,
                                    builder: (context) => Container(
                                      width: context.width,
                                      height: context.height * 0.3,
                                      decoration: BoxDecoration(
                                        color: ColorConst.white,
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 18,
                                              bottom: 13,
                                              left: context.width * 0.18,
                                            ),
                                            child: Text(
                                              "What type of account do you want to add",
                                              style: TextStyle(
                                                  fontSize:
                                                      FontConst.mediumFont - 2,
                                                  fontWeight: FontWeight.w500,
                                                  color: ColorConst.black
                                                      .withOpacity(0.5)),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Divider(
                                            color: ColorConst.black
                                                .withOpacity(0.4),
                                          ),
                                          textModal(
                                              context, "Add axisting account"),
                                          Divider(
                                            color: ColorConst.black
                                                .withOpacity(0.4),
                                          ),
                                          InkWell(
                                            child: textModal(
                                                context, "Create new account"),
                                            onTap: () {
                                              showModalBottomSheet(
                                                isScrollControlled: true,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(13)
                                                ),
                                                context: context,
                                                builder: (context) {
                                                  return SizedBox(
                                                    height:
                                                        context.height*0.8,
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const  EdgeInsets.symmetric(horizontal: 16,vertical: 18),
                                                              child: Text("Cancel",style: TextStyle(fontSize: FontConst.mediumFont+2,fontWeight: FontWeight.w600,color: ColorConst.blue),),
                                                            ),
                                                            SizedBox(
                                                              width: context.width*0.1,
                                                            ),
                                                            Text("Create new",style: TextStyle(fontSize: FontConst.mediumFont+2,fontWeight: FontWeight.w700),),
                                                            Divider(color: ColorConst.black.withOpacity(0.3),),
                                                            SizedBox(
                                                              height: context.height*0.04
                                                            ),
                                                          ],
                                                        ),
                                                        textBeforeInput("Ful name"),
                                                        inputfield("Enter your full name... ",)
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              Text(
                                "You can another accounts for example for your children or disabled relatives",
                                style: TextStyle(
                                    fontSize: FontConst.mediumFont - 2,
                                    color: ColorConst.black.withOpacity(0.6)),
                              ),
                              SizedBox(
                                height: context.height * 0.05,
                              ),
                              logoutButton(context),
                              SizedBox(
                                height: context.height * 0.05,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          } else if (state is LoadingHome) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is ErrorHome) {
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

  Padding textModal(BuildContext context, text) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.25, vertical: context.height * 0.02),
      child: Text(
        text,
        style: TextStyle(
            fontSize: FontConst.largeFont,
            fontWeight: FontWeight.w600,
            color: ColorConst.blue),
      ),
    );
  }
}
